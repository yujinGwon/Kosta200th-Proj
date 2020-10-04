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
import net.hotelbooking.vo.HotelVO;

public class HotelDAO {
	
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs; 
	
	public HotelDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("Connection HotelDAO Success");
		} catch (Exception e) {
			System.out.println("DB 연결실패 " + e);
			return;
		}
	} // constructor end
	
	public List select() {
		String sql = "select * from hotel order by h_id";
		List list  = new ArrayList();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HotelVO vo = new HotelVO();

				vo.setH_id(rs.getInt("h_id"));
				vo.setH_xpoint(rs.getInt("h_xpoint"));
				vo.setH_ypoint(rs.getInt("h_ypoint"));
				vo.setH_wifi(rs.getInt("h_wifi"));
				vo.setH_parking(rs.getInt("h_parking"));
				vo.setH_swimming(rs.getInt("h_swimming"));
				vo.setH_roomservice(rs.getInt("h_roomservice"));
				vo.setH_bus(rs.getInt("h_bus"));
				vo.setH_grade(rs.getInt("h_grade"));
				vo.setH_rate(rs.getInt("h_rate"));
				
				vo.setH_name(rs.getString("h_name"));
				vo.setH_location(rs.getString("h_location"));
				vo.setH_tel(rs.getString("h_tel"));
				vo.setH_img(rs.getString("h_img"));
				vo.setH_desc(rs.getString("h_desc"));	

				list.add(vo);		
				
			}
			System.out.println("리스트 리턴 하는지?");
			
			return list;
			
		} catch (Exception e) {
			System.out.print("hotel select error : " + e );
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		System.out.println("널 리턴 하는지?");
		return null;
	}
}
