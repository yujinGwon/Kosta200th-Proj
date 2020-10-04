package net.hotelbooking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.action.Action;
import net.hotelbooking.action.ActionForward;
import net.hotelbooking.action.DashboardDeleteAction;
import net.hotelbooking.action.DashboardDeleteView;
import net.hotelbooking.action.DashboardDetailAction;
import net.hotelbooking.action.DashboardInsertAction;
import net.hotelbooking.action.DashboardListAction;
import net.hotelbooking.action.DashboardModifyAction;
import net.hotelbooking.action.DashboardModifyView;

@WebServlet("/dc/*")
public class DashboardController extends HttpServlet implements Servlet {

	private static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());

		System.out.println("requestURI : " + requestURI);
		System.out.println("contextPath : " + contextPath);
//		System.out.println("contextPath.length() : " + contextPath.length());
		System.out.println("command : " + command);

		ActionForward forward = null;
		Action action = null;

		if (command.equals("/dc/write.do")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/board/write.jsp");
		}else if (command.equals("/dc/insert.do")) {
			action = new DashboardInsertAction();
			try {
				forward = action.execute(request, response); // insert execute(request, response)
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/dc/list.do")) {
			action = new DashboardListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/dc/detail.do")) {
			action = new DashboardDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/dc/delete.do")) {
			action = new DashboardDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/dc/modifyView.do")) {
			action = new DashboardModifyView();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/dc/deleteView.do")) {
			action = new DashboardDeleteView();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}else if (command.equals("/dc/modify.do")) {
			action = new DashboardModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher d = request.getRequestDispatcher(forward.getPath());
				d.forward(request, response);
			}
		}
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

}
