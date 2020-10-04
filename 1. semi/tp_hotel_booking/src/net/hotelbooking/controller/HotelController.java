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
import net.hotelbooking.action.HotelListAction;


@WebServlet("/hc/*")
public class HotelController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		
		request.setCharacterEncoding("utf-8");
		
		if( command.equals("/hc/hotel.do")) {
			System.out.println("hc/hotel.do 오는지");
			action = new HotelListAction();
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
