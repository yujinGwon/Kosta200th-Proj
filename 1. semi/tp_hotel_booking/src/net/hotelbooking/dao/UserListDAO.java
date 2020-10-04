package net.hotelbooking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.hotelbooking.vo.UserListVO;

public class UserListDAO {

	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public UserListDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("connection !!!!");
		} catch (Exception e) {
			System.out.println("DB 연결 실패 " + e);
			return;
		}
	} // constructor end

	// DB에 유저 데이터를 넣을 때
	public boolean UserListInsert(UserListVO vo) {

		int num = 0, result = 0;
		StringBuffer sb = new StringBuffer();
		System.out.println(vo.getU_pwd() + " " + vo.getU_name() + " " + vo.getU_phone() + " " + vo.getU_address() + " "
				+ vo.getU_grade() + " " + vo.getU_email());
		try {
			sb.append("insert into USERLIST(u_id, u_pwd, u_name, u_phone, u_address, u_grade, u_email) ");
			sb.append(" values(u_seq.nextval, ?, ?, ?, ?, ?, ?)");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getU_pwd());
			pstmt.setString(2, vo.getU_name());
			pstmt.setString(3, vo.getU_phone());
			pstmt.setString(4, vo.getU_address());
			pstmt.setInt(5, vo.getU_grade());
			pstmt.setString(6, vo.getU_email());

			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0)
				return false;
			return true;

		} catch (Exception e) {
			System.out.println("userlist insert 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return false;
	}

	// 임시 비밀번호 업데이트
	public boolean UserUpdate(String resetPassword, UserListVO vo) {

		int result = 0;
		String sql = "update userlist set U_PWD=? where U_EMAIL=? ";
		try {
			System.out.println(resetPassword + " " + vo.getU_email());
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, resetPassword);
			pstmt.setString(2, vo.getU_email());
			System.out.println(pstmt.executeUpdate());
			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0) {
				System.out.println("임시비밀번호 생성 실패");
				return false;
			}
			System.out.println("임시비밀번호 생성 성공");
			return true;

		} catch (Exception e) {
			System.out.println("userlist update 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return false;
	}

	// user정보 변경
	public boolean UserUpdateAll(String beforeEmail, UserListVO vo) {

		int result = 0;
		String sql = "update userlist set U_NAME=?, U_PWD=?, U_EMAIL=?, U_PHONE=?, U_ADDRESS=? where U_EMAIL=? ";
		try {
			System.out.println(beforeEmail + " " + vo.getU_email());
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getU_name());
			pstmt.setString(2, vo.getU_pwd());
			pstmt.setString(3, vo.getU_email());
			pstmt.setString(4, vo.getU_phone());
			pstmt.setString(5, vo.getU_address());
			pstmt.setString(6, beforeEmail);
			System.out.println(pstmt.executeUpdate());
			result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if (result == 0)
				return false;
			return true;

		} catch (Exception e) {
			System.out.println("user information update 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return false;
	}

	// 회원가입 할 때 중복 회원 있는지 확인 할 때
	public boolean UserSelectCheck(UserListVO vo) {
		String sql = "select u_email from userlist where u_email = ?";

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getU_email());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				if ((rs.getString("u_mail")) != null) {
					return false;
				}
			}
			return true;
		} catch (Exception e) {
			System.out.println("user select 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return false;
	}

	// 로그인 할 때
	public boolean UserPassCheck(UserListVO vo) {
		String sql = "select u_pwd from userlist where u_email=?";

		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getU_email());
			rs = pstmt.executeQuery();

			while (rs.next()) {
				if ((rs.getString("u_pwd")).equals(vo.getU_pwd())) {
					return true;
				}
			}

			return false;
		} catch (Exception e) {
			System.out.println("User Password Check 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return false;
	}

	// 회원가입 할 때 중복 회원 있는지 확인 할 때
	public UserListVO UserSelect(String email) {
		String sql = "select * from userlist where u_email=?";
		UserListVO vo = new UserListVO();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				vo.setU_name(rs.getString("u_name"));
				vo.setU_email(rs.getString("u_email"));
				vo.setU_address(rs.getString("u_address"));
				vo.setU_phone(rs.getString("u_phone"));
			}

			return vo;
		} catch (Exception e) {
			System.out.println("user select 에러 : " + e);
		} finally {
			dbConn.util.CloseHelper.close(rs);
			dbConn.util.CloseHelper.close(pstmt);
			dbConn.util.CloseHelper.close(conn);
		}

		return null;
	}
}
