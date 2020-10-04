package net.hotelbooking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.action.Action;
import net.hotelbooking.action.ActionForward;
import net.hotelbooking.action.AllRoomListAction;
import net.hotelbooking.action.MainRoomListAction;
import net.hotelbooking.action.RoomDetailAction;
import net.hotelbooking.action.RoomListAction;
import net.hotelbooking.action.SmartRoomListAction;

@WebServlet("/rc/*")
public class RoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		
		request.setCharacterEncoding("utf-8");
		
		if( command.equals("/rc/roomlist.do")) { // h_id(호텔) 기준으로 룸(방) 리스트 보기
			action = new RoomListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}		
		} else if( command.equals("/rc/roomlistall.do")) { // 메인에서 밑에 결정하지 못했니? 전체볼래? select *
			action = new AllRoomListAction();
			try { 
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	 		
		} else if( command.equals("/rc/main-roomlist.do")) { // 메인 검색창에서 들어와서 상세보기 여기서는 h_location, r_people 으로 셀렉트
			action = new MainRoomListAction();
			try { 
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		} else if( command.equals("/rc/smart-roomlist.do")) { // 룸 리스트에서 왼쪽에 스마트 검색으로 들어오기 여기서는... 	r_people, r_type, r_cost, h_옵션별로 셀렉트
			action = new SmartRoomListAction();
			try { 
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		} else if( command.equals("/rc/roomdetail.do")) { // 방(룸) 상세보기
			action = new RoomDetailAction();
			try { 
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		} 		
		
		if( forward != null ) {
			if( forward.isRedirect() ) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher d = 
						request.getRequestDispatcher(forward.getPath());
				d.forward(request, response);
			}
		}// out if end
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
