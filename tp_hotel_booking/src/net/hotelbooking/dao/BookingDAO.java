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
import net.hotelbooking.vo.BookingVO;
import net.hotelbooking.vo.RoomVO;
import net.hotelbooking.vo.UserListVO;

public class BookingDAO {

	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public BookingDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("Connection BookingDAO Success");
		} catch (Exception e) {
			System.out.println("DB 연결실패 " + e);
			return;
		}
	} // constructor end

	public List selectEmail(String email) {
		System.out.println(email);
		String sql = "select b_no, h_name, r_name, b_checkin, b_checkout, b_people"
				+ " from booking, userlist, hotel, room" + " where booking.b_u_id = userlist.u_id"
				+ " and booking.b_h_id = hotel.h_id" + " and booking.b_r_id=room.r_id" + " and userlist.u_email=?";
		List<BookingVO> list = new ArrayList<BookingVO>();

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			System.out.println("실행되었습니다.");
			while (rs.next()) {
				BookingVO vo = new BookingVO();
				vo.setB_no(rs.getInt("b_no"));
//				vo.setU_email(rs.getString("u_email")); 이메일 저장 할 필요 없어서 주석처리함.
				vo.setH_name(rs.getString("h_name"));
				vo.setR_name(rs.getString("r_name"));
				vo.setB_checkin(rs.getString("b_checkin"));
				vo.setB_checkout(rs.getString("b_checkout"));
				vo.setB_people(rs.getInt("b_people"));
				System.out.println(vo.getH_name());
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
	
	public int UserSelectUID(String email) {
		String sql = "select * from userlist where u_email=?";
		int u_id = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				u_id = rs.getInt("u_id");
			}

			return u_id;
		} catch (Exception e) {
			System.out.println("user select 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return u_id;
	}
	
	public int RoomSelectPeople(int r_id) {
		String sql = "select * from room where r_id=?";
		int r_people = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				r_people = rs.getInt("r_people");
			}

			return r_people;
		} catch (Exception e) {
			System.out.println("user select 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return r_people;
	}
	
	public int BookingSelectNum() {
		String sql = "select * from booking";
		int num = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				num += 1;
			}

			return num;
		} catch (Exception e) {
			System.out.println("user select 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return num;
	}
	
	public int HotelSelectHID(int r_id) {
		String sql = "select h_id from room where r_id=?";
		int h_id = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				h_id = rs.getInt("h_id");
			}

			return h_id;
		} catch (Exception e) {
			System.out.println("user select 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return h_id;
	}
	
	public boolean insert(int b_no, int u_id, int h_id, int r_id, int r_people) {
		String sql ="insert into"
				+" booking(b_no, b_u_id, b_h_id, b_r_id, b_checkin, b_checkout, b_people, b_date, b_plus)"
				+" values(?,?,?,?, sysdate, sysdate, ?, sysdate, 0)";
		int result = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_no+1);
			pstmt.setInt(2, u_id);
			pstmt.setInt(3, h_id);
			pstmt.setInt(4, r_id);
			pstmt.setInt(5, r_people);

			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0)
				return false;
			return true;

		} catch (Exception e) {
			System.out.println("booking insert 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}
		return false;
	}
	public boolean RoomUpdateAble(int r_id) {
		String sql ="update room set r_able=0 where r_id=?";
		int result = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r_id);
			
			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0)
				return false;
			return true;

		} catch (Exception e) {
			System.out.println("room update 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}
		return false;
	}
}
