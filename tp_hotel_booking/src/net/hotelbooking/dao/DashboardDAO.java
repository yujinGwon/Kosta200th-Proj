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
import net.hotelbooking.vo.HotelVO;
import net.hotelbooking.vo.RoomVO;
import net.hotelbooking.vo.UserListVO;
import sun.security.pkcs11.Secmod.DbMode;

public class DashboardDAO {

	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs; 
	
	public DashboardDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("Connection DashboardDAO Success");
		} catch (Exception e) {
			System.out.println("DB 연결실패 " + e);
			return;
		}
	} // constructor end
	
	public boolean checkpass(int num, String d_pass) {
		DashboardVO vo = null;
		String sql = "SELECT * FROM DASHBOARD WHERE D_PASS = ? AND D_NO1 = ?"; 
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, d_pass);
			pstmt.setInt(2, num);
			rs = pstmt.executeQuery();
			System.out.println("1111" + num + " " + d_pass);
			if(rs.next()) {
				vo = new DashboardVO();
				vo.setD_no1(rs.getInt("d_no1"));
				vo.setD_pass(rs.getString("d_pass"));
				vo.setD_u_name(rs.getString("d_u_name"));
				vo.setD_title(rs.getString("d_title"));
				vo.setD_content(rs.getString("d_content"));
				vo.setD_date(rs.getDate("d_date"));
				
				return true;
			}
		}catch(Exception e) {
			System.out.println("checkpass error : " + e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return false;
	}
	
	public boolean modify(DashboardVO vo) {
		String sql = "UPDATE DASHBOARD SET D_TITLE = ?, D_CONTENT = ? WHERE D_NO1 = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getD_title());
			pstmt.setString(2, vo.getD_content());
			pstmt.setInt(3, vo.getD_no1());
			
			pstmt.executeUpdate();
			return true;
		}catch(Exception e) {
			System.out.println("modify error : " + e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return false;
	}
		
	public boolean delete(int num) {
		String sql = "DELETE FROM DASHBOARD WHERE D_NO1 = ?";
		// String sql = "UPDATE DASHBOARD SET D_TITLE = ?, D_CONTENT = ?, D_AVAILABLE = ? WHERE D_NO1 = ?"
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			return true;
		}catch(Exception e) {
				System.out.println("delete error : " + e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return false;
	}	
	
	public DashboardVO getDetail(int num) {
		DashboardVO vo = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM DASHBOARD WHERE D_NO1 = ?");
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new DashboardVO();
				vo.setD_no1(rs.getInt("d_no1"));
				vo.setD_u_name(rs.getString("d_u_name"));
				vo.setD_title(rs.getString("d_title"));
				vo.setD_content(rs.getString("d_content"));
				vo.setD_date(rs.getDate("d_date"));
			}
			return vo;
		}catch(Exception e) {
			System.out.println("getDetail error : " + e);

		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;
	}
		
	
	public int selectcount() {
		int count = 0;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("SELECT COUNT(*) FROM DASHBOARD");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
		}catch(Exception e) {
			System.out.println("selectcount error :" + e );
		}finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return count;
	}
	
	public List select(int page, int limit) {
		String sql = "SELECT * FROM " + 
				"(SELECT ROWNUM RNUM, D_NO1, D_U_NAME, D_AVAILABLE, D_DATE, D_TITLE, D_CONTENT FROM " +
			    "(SELECT * FROM DASHBOARD ORDER BY D_DATE DESC, D_NO2 ASC)) " +
			    " WHERE RNUM >=? AND RNUM <=?";   
		List list  = new ArrayList();
		int startrow = (page-1) * 10 + 1;
		int endrow = startrow + limit - 1;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				DashboardVO vo = new DashboardVO();
				vo.setD_no1(rs.getInt("d_no1"));
				vo.setD_u_name(rs.getString("d_u_name"));
				vo.setD_available(rs.getInt("d_available"));
				vo.setD_date(rs.getDate("d_date"));
				vo.setD_title(rs.getString("d_title"));
				vo.setD_content(rs.getString("d_content"));
				
				list.add(vo);
			}
			return list;
		} catch (Exception e) {
			System.out.print("select error : " + e );
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;
	}			
	
	public boolean insert(DashboardVO vo) {
		UserListVO user = new UserListVO();
		HotelVO hotel = new HotelVO();
		RoomVO room = new RoomVO();
		int num = 0;
		int result = 0;
		StringBuffer sb = new StringBuffer();  // !!!!! 
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("SELECT MAX(D_NO1) FROM DASHBOARD");
			rs = pstmt.executeQuery();
			System.out.println("insert dao max");
			if( rs.next()) {
				num = rs.getInt(1) + 1;  // 
			}else { 
				num = 1;
			}
			// insert into dashboard(d_no1, d_no2, d_u_id, d_u_name, d_available, d_title, d_content values     
			sb.append("INSERT INTO DASHBOARD(D_NO1, D_NO2, D_U_NAME, D_PASS, D_AVAILABLE, D_DATE, D_TITLE, D_CONTENT)"); 
			sb.append("VALUES(?, ?, ?, ?, ?, SYSDATE, ?, ?)");
		
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, num); 
			pstmt.setInt(2, 0);
			pstmt.setString(3, vo.getD_u_name());
			pstmt.setString(4, vo.getD_pass());
			pstmt.setInt(5, 1);
			pstmt.setString(6, vo.getD_title());
			pstmt.setString(7, vo.getD_content());		

			result = pstmt.executeUpdate();
			System.out.println("result : " + result );
			if (result == 0 ) {
				return false;
			}			
			return true;					
		} catch (Exception e) {
			System.out.print("insert error : " + e );
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}		
		return false;
	}
	
	public List selectEmail(String email) {
		System.out.println(email);
		String sql = "SELECT * FROM "
				+ "(SELECT ROWNUM RNUM, D_NO1, D_U_NAME, D_AVAILABLE, D_DATE, D_TITLE, D_CONTENT FROM "
				+ "(SELECT * FROM DASHBOARD where D_U_NAME=? ORDER BY D_DATE DESC, D_NO2 ASC))";  
		List<DashboardVO> list  = new ArrayList<DashboardVO>();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			System.out.println("실행되었습니다.");
			while(rs.next()) {
				if(rs.getInt("d_available")!=0) {
					DashboardVO vo = new DashboardVO();
					vo.setD_no1(rs.getInt("d_no1"));
//					vo.setD_available(rs.getInt("d_available"));
					vo.setD_date(rs.getDate("d_date"));
					vo.setD_title(rs.getString("d_title"));
					vo.setD_content(rs.getString("d_content"));
					System.out.println("vo : "+vo.getD_no1()+" "+vo.getD_date()+" ");
					list.add(vo);
				}
			}
			return list;
		} catch (Exception e) {
			System.out.print("select email error : " + e );
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;
	}			
}