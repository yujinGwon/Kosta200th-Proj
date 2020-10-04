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
import net.hotelbooking.vo.RoomVO;

public class RoomDAO {
	
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs; 
	
	public RoomDAO() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc:HotelBookingDB");
			System.out.println("Connection RoomDAO Success");				
		} catch (Exception e) {
			System.out.println("DB 연결 실패: " +e);
			return;
		}
	} // constructor end
	
	//smartselect(r_people, r_type, min_cost, max_cost, h_wifi, h_parking, h_swimming, h_roomservice, h_bus)
	public List smartselect(int r_people, String r_type, int max_cost, int h_wifi, int h_parking,
							int h_swimming, int h_roomservice, int h_bus) {
		
		StringBuffer sb = new StringBuffer();
		sb.append("select *");
		sb.append(" from hotel h, room r where h.h_id = r.h_id");
		sb.append(" and r_people >= ? and r_type = ? and r_cost <= ?");
		sb.append(" and h_wifi=? and h_parking=? and h_swimming=? and h_roomservice=? and h_bus=?");
		
		List list = new ArrayList();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());			
			
			pstmt.setInt(1, r_people);
			pstmt.setString(2, r_type);
			pstmt.setInt(3, max_cost);
			pstmt.setInt(4, h_wifi);
			pstmt.setInt(5, h_parking);
			pstmt.setInt(6, h_swimming);
			pstmt.setInt(7, h_roomservice);
			pstmt.setInt(8, h_bus);		
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVO vo = new RoomVO();
				vo.setR_id(rs.getInt("r_id"));
				vo.setR_name(rs.getString("r_name"));
				vo.setH_id(rs.getInt("h_id"));
				vo.setR_no(rs.getInt("r_no"));
				vo.setR_type(rs.getString("r_type"));
				vo.setR_people(rs.getInt("r_people"));
				vo.setR_cost(rs.getInt("r_cost"));
				vo.setR_able(rs.getInt("r_able"));
				vo.setR_b_count(rs.getInt("r_b_count"));
				vo.setR_img1(rs.getString("r_img1"));
				vo.setR_img2(rs.getString("r_img2"));
				vo.setR_img3(rs.getString("r_img3"));
				
				list.add(vo);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("room smart select error:" +e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;		
	}
	
	//mainselect(h_location, r_type, r_people);
	public List mainselect(String h_location, String r_type, int r_people) {
		StringBuffer sb = new StringBuffer();
		sb.append("select *");
		sb.append(" from hotel s, room r where s.h_id = r.h_id ");
		sb.append(" and h_location like ? and r_type=? and r_people=?");
		
		List list = new ArrayList();
		String h_location_final = "%"+h_location+"%";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, h_location_final);
			pstmt.setString(2, r_type);
			pstmt.setInt(3, r_people);		
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVO vo = new RoomVO();
				vo.setR_id(rs.getInt("r_id"));
				vo.setR_name(rs.getString("r_name"));
				vo.setH_id(rs.getInt("h_id"));
				vo.setR_no(rs.getInt("r_no"));
				vo.setR_type(rs.getString("r_type"));
				vo.setR_people(rs.getInt("r_people"));
				vo.setR_cost(rs.getInt("r_cost"));
				vo.setR_able(rs.getInt("r_able"));
				vo.setR_b_count(rs.getInt("r_b_count"));
				vo.setR_img1(rs.getString("r_img1"));
				vo.setR_img2(rs.getString("r_img2"));
				vo.setR_img3(rs.getString("r_img3"));
				
				list.add(vo);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("room mainselect error:" +e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;	
	}
	
	// allselect
	public List allselect() {
		
		String sql = "select * from room";		
		List list = new ArrayList();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVO vo = new RoomVO();
				vo.setR_id(rs.getInt("r_id"));
				vo.setR_name(rs.getString("r_name"));
				vo.setH_id(rs.getInt("h_id"));
				vo.setR_no(rs.getInt("r_no"));
				vo.setR_type(rs.getString("r_type"));
				vo.setR_people(rs.getInt("r_people"));
				vo.setR_cost(rs.getInt("r_cost"));
				vo.setR_able(rs.getInt("r_able"));
				vo.setR_b_count(rs.getInt("r_b_count"));
				vo.setR_img1(rs.getString("r_img1"));
				vo.setR_img2(rs.getString("r_img2"));
				vo.setR_img3(rs.getString("r_img3"));
				
				list.add(vo);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("room allselect error:" +e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;		
	}
	
	
	
	// mainsort
	public List mainsort() {
		StringBuffer sb = new StringBuffer();
		sb.append("select *");
		sb.append(" from (select * from room where r_able=1 order by r_cost)");
		sb.append(" where rownum <=7");
		
		List list = new ArrayList();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sb.toString());			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVO vo = new RoomVO();
				vo.setR_id(rs.getInt("r_id"));
				vo.setR_name(rs.getString("r_name"));
				vo.setH_id(rs.getInt("h_id"));
				vo.setR_no(rs.getInt("r_no"));
				vo.setR_type(rs.getString("r_type"));
				vo.setR_people(rs.getInt("r_people"));
				vo.setR_cost(rs.getInt("r_cost"));
				vo.setR_able(rs.getInt("r_able"));
				vo.setR_b_count(rs.getInt("r_b_count"));
				vo.setR_img1(rs.getString("r_img1"));
				vo.setR_img2(rs.getString("r_img2"));
				vo.setR_img3(rs.getString("r_img3"));
				
				list.add(vo);
			}
			return list;			
			
		} catch (Exception e) {
			System.out.println("mainsort error:" +e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;		
	}
	
	// 호텔페이지를 통해서 넘어갔을 때
	public List select(int h_id) {
		String sql = "select * from room where h_id = ?";
		
		List list = new ArrayList();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, h_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVO vo = new RoomVO();
				vo.setR_id(rs.getInt("r_id"));
				vo.setR_name(rs.getString("r_name"));
				vo.setH_id(rs.getInt("h_id"));
				vo.setR_no(rs.getInt("r_no"));
				vo.setR_type(rs.getString("r_type"));
				vo.setR_people(rs.getInt("r_people"));
				vo.setR_cost(rs.getInt("r_cost"));
				vo.setR_able(rs.getInt("r_able"));
				vo.setR_b_count(rs.getInt("r_b_count"));
				vo.setR_img1(rs.getString("r_img1"));
				vo.setR_img2(rs.getString("r_img2"));
				vo.setR_img3(rs.getString("r_img3"));
				
				list.add(vo);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("room select error:" +e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;
	}

	// 방 썸네일 클릭해서 방 상세보기로 넘어갔을 때
	public List detail(int r_id) {
		String sql = "select * from room where r_id = ?";
		
		List list = new ArrayList();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVO vo = new RoomVO();
				vo.setR_id(rs.getInt("r_id"));
				vo.setR_name(rs.getString("r_name"));
				vo.setH_id(rs.getInt("h_id"));
				vo.setR_no(rs.getInt("r_no"));
				vo.setR_type(rs.getString("r_type"));
				vo.setR_people(rs.getInt("r_people"));
				vo.setR_cost(rs.getInt("r_cost"));
				vo.setR_able(rs.getInt("r_able"));
				vo.setR_b_count(rs.getInt("r_b_count"));
				vo.setR_img2(rs.getString("r_img2"));
				vo.setR_img3(rs.getString("r_img3"));
				
				list.add(vo);
			}			
			return list;
			
		} catch (Exception e) {
			System.out.println("room detail error:" +e);
		} finally {
			CloseHelper.close(rs);
			CloseHelper.close(pstmt);
			CloseHelper.close(conn);
		}
		return null;		
	}
}
