package net.hotelbooking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dbConn.util.CloseHelper;
import net.hotelbooking.vo.DashboardVO;

public class ReplyDAO {

	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public ReplyDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("connection");
		} catch (Exception e) {
			System.out.println("DB 연결 실패" + e);
		}
	}
	
	public int countNum() {
		int num =0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select max(D_NO2) from Dashboard");
			rs = pstmt.executeQuery();

			if (rs.next())
				num = rs.getInt(1) + 1; //
			else
				num = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
		

	}

	// insert 글 등록
	public boolean boardInsert(DashboardVO vo, int num) {
		int result = 0;
		StringBuffer sb = new StringBuffer(); // !!!!!

		try {
			
			System.out.println("num : " + num +" "+ vo.getD_u_id() + " " + vo.getD_u_name() + " " + vo.getD_content());
			sb.append(
					"insert into Dashboard(D_NO1, D_NO2, D_U_ID, D_U_NAME, D_CONTENT, D_AVAILABLE, D_DATE) values(?, ?, ?, ?, ?, 1, sysdate)");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, 0);
			pstmt.setInt(2, num);
			pstmt.setInt(3, vo.getD_u_id());
			pstmt.setString(4, vo.getD_u_name());
			pstmt.setString(5, vo.getD_content());

			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0)
				return false;

			return true;
		} catch (Exception e) {
			System.out.println("board insert error : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return false;
	} // boardInsert() end

	// userlist U-id 불러오기
	public int isUserlistUid(String email) {
		String sql = "select*from userlist where u_email= ?";
		int u_id = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				u_id = rs.getInt("u_id");
			}
			return u_id;
			
		} catch (Exception e) {
			System.out.println("U-id_comon error : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}
		return u_id;
	}
	
	
	// 글쓴이인지 확인 메소드 -
	public boolean isBoardWriter(int D_u_id, String pass) {
		String sql = "select*from Dashboard where D_u_id= ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, D_u_id);
			rs = pstmt.executeQuery();
			rs.next();

			if (pass.equals(rs.getInt("D_u_id"))) {
				return true;
			}
		} catch (Exception e) {
			System.out.println("Reply error : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}
		return false;
	}

	// 글 보여주기
	public List selectReply() {
		String sql = "select d_no2, d_u_name, d_available, d_date, d_content from dashboard where d_no1=0 and d_available=1";
		List<DashboardVO> list = new ArrayList<DashboardVO>();

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("실행되었습니다. ㅋㅋㅋㅋㅋㅋㅋㅋ");
			while (rs.next()) {
				DashboardVO vo = new DashboardVO();
				vo.setD_u_name(rs.getString("D_U_NAME"));
//				vo.setD_u_id(rs.getInt("D_u_id"));
//							vo.setD_available(rs.getInt("d_available"));
				vo.setD_date(rs.getDate("D_DATE"));
				vo.setD_content(rs.getString("D_CONTENT"));
				vo.setD_no2(rs.getInt("d_no2"));
				System.out.println("vo : " + vo.getD_u_name() + " " + vo.getD_date() + " ");
//				System.out.println("vo : " + vo.getD_no2() + " " + vo.getD_date() + " ");
				list.add(vo);
			}
			return list;
		} catch (Exception e) {
			System.out.print("select email error : " + e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;
	}

	// 글 삭제(delete) - BoardDelete
	public boolean boardDelete(int num) {
		String sql = "delete Dashboard where d_no2=?";
		try {
			System.out.println("!1111: "+num);
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

			return true;
		} catch (Exception e) {
			System.out.println("boardDelete error : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}
		return false;
	}

}
