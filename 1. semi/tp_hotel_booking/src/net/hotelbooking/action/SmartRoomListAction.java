package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.RoomDAO;

public class SmartRoomListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RoomDAO dao = new RoomDAO();
		List list = new ArrayList();
								
		int r_people = Integer.parseInt(request.getParameter("r_people"));
		String r_type=request.getParameter("r_type");
		
		// r_cost=70000%2C320000 --> (최소값)%2C(최대값)
		
		//String r_cost = request.getParameter("r_cost");
		//String[] r_costb = r_cost.split(",");
		
		// int min_cost = Integer.parseInt(r_costb[0]);
		
		int max_cost = 0;
		
		try {
			if(request.getParameter("r_cost") == null || request.getParameter("r_cost")=="") {
				max_cost = 500000;
			} else if(request.getParameter("r_cost") != null){
				max_cost = Integer.parseInt(request.getParameter("r_cost"));
			}
		} catch (Exception e) {
			max_cost = 0;
		}	
				
		int h_wifi = 0;
		int h_parking = 0;
		int h_swimming = 0;
		int h_roomservice = 0;
		int h_bus = 0;
		
		// if(request.getParameter("h_wifi")=="" ||request.getParameter("h_wifi") == null || )
		
		
		
		try {
			if(request.getParameter("h_wifi") == null || request.getParameter("h_wifi")==""){
				h_wifi = 0;						
			} else if(request.getParameter("h_wifi") != null){
				h_wifi = Integer.parseInt(request.getParameter("h_wifi"));					
			}
		} catch (Exception e) {
			h_wifi = 0;
		}
		
		
		try {
			if(request.getParameter("h_parking") == null || request.getParameter("h_parking")==""){
				h_parking = 0;							
			} else if(request.getParameter("h_parking") != null){
				h_parking = Integer.parseInt(request.getParameter("h_parking"));				
			}	
		} catch (Exception e) {
			h_parking = 0;
		}
		
		
		try {
			if(request.getParameter("h_swimming") == null || request.getParameter("h_swimming")==""){
				h_swimming = 0;							
			} else if(request.getParameter("h_swimming") != null){
				h_swimming = Integer.parseInt(request.getParameter("h_swimming"));				
			}			
		} catch (Exception e) {
			h_swimming = 0;
		}
		
		
		try {
			if(request.getParameter("h_roomservice") == null || request.getParameter("h_roomservice")==""){
				h_roomservice = 0;							
			} else if(request.getParameter("h_roomservice") != null){
				h_roomservice = Integer.parseInt(request.getParameter("h_roomservice"));				
			}		
		} catch (Exception e) {
			h_roomservice = 0;
		}
		
		
		try {
			if(request.getParameter("h_bus") == null || request.getParameter("h_bus")==""){
				h_bus = 0;							
			} else if(request.getParameter("h_bus") != null){
				h_bus = Integer.parseInt(request.getParameter("h_bus"));				
			}		
		} catch (Exception e) {
			h_bus = 0;
		} 
		

/*		if(request.getParameter("h_wifi") != null) {
			String s_wifi = request.getParameter("h_wifi");
			if(s_wifi.equals("on")) h_wifi=1; 
			else h_wifi=0;
		} else h_wifi = 0;
		
		if(request.getParameter("h_parking") != null) {
			String s_parking = request.getParameter("h_parking");	
			if(s_parking.equals("on")) h_parking=1;
			else h_parking=0;
		} else h_parking = 0;
		
		if(request.getParameter("h_swimming") != null) {
			String s_swimming = request.getParameter("h_swimming");	
			if(s_swimming.equals("on")) h_swimming=1;
			else h_swimming=0;
		} else h_swimming = 0;
		
		if(request.getParameter("h_roomservice") != null) {
			String s_roomservice = request.getParameter("h_roomservice");
			if(s_roomservice.equals("on")) h_roomservice=1;
			else h_roomservice=0;
		} else h_roomservice = 0;
		
		if(request.getParameter("h_bus") != null) {
			String s_bus = request.getParameter("h_bus");
			if(s_bus.equals("on")) h_bus=1;		
			else h_bus=0;		
		} else h_bus = 0;
*/	

		// 검증하는거... 
		System.out.println("r_people는 : " +r_people);
		System.out.println("r_type는 : " +r_type);
		System.out.println("max_cost: " + max_cost);
		System.out.println("h_wifi는 : " +h_wifi);
		System.out.println("h_parking는 : " +h_parking);
		System.out.println("h_swimming는 : " +h_swimming);
		System.out.println("h_roomservice는 : " +h_roomservice);
		System.out.println("h_bus는 : " +h_bus);
		
		//		
		list = dao.smartselect(r_people, r_type, max_cost, h_wifi, h_parking, h_swimming, h_roomservice, h_bus);
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/roomlist.jsp");
		
		return forward;
	}
}
