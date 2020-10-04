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
import net.hotelbooking.action.ReplyAction;
import net.hotelbooking.action.ReservationDelete;

@WebServlet("/re/*")
public class ReplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		
		request.setCharacterEncoding("utf-8");
		System.out.println(command);
		if(command.equals("/re/ReplyAction.do")) {
			System.out.println("re Action 있나");
			action = new ReplyAction();
			try {
				forward = action.execute(request, response);
				System.out.println("forwardac : " + forward);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/re/ReservationDelete.do")) { //delete
			System.out.println("re ReDel 있나");
			action = new ReservationDelete();
			try {
				forward = action.execute(request, response);
				System.out.println("forward : " + forward);
			}catch(Exception e) {
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
