package net.hotelbooking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.action.Action;
import net.hotelbooking.action.ActionForward;
import net.hotelbooking.action.IndexSortAction;
import net.hotelbooking.action.LoginAction;
import net.hotelbooking.action.LogoutAction;
import net.hotelbooking.action.MyPageView;
import net.hotelbooking.action.RegisterAction;
import net.hotelbooking.action.ResetPassAction;
import net.hotelbooking.action.UserModifyAction;


@WebServlet("/uc/*")
public class UserListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		
		request.setCharacterEncoding("utf-8");
//		경고 창 나오는 것 아직 조치 중 0603
//		PrintWriter out = null;
		
		if( command.equals("/uc/index.do")) {
			action = new IndexSortAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("IndexSortAction 에러 : "+e);
			}
		} else if (command.equals("/uc/aboutus.do")) {
			System.out.println("aboutus.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/aboutus.jsp");
			
		} else if (command.equals("/uc/reservation1.do")) { // reservation 은 booking 이니까 bc 로 이동?
			System.out.println("reservation1.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/reservation1.jsp");
			// command = "/bc/reservation1.do";
			
		} else if (command.equals("/uc/board.do")) { // board 는 dashboard 니까 dc 로 이동?
			System.out.println("board.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/board.jsp");
			
		} else if (command.equals("/uc/contact.do")) {
			System.out.println("contact.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/contact.jsp");
			
		} else if( command.equals("/uc/login.do")) {
			System.out.println("login.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/login.jsp");
		} else if (command.equals("/uc/register.do")) {
			System.out.println("register.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/register.jsp");			
		} else if (command.equals("/uc/password.do")) {
			System.out.println("password.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/change-sendemail.jsp");
			
		} else if (command.equals("/uc/mypage.do")) {
			action = new MyPageView();
			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				System.out.println("MyPageView 에러 : "+e);
			}
			
		} else if (command.equals("/uc/bc/properties.do")) { // 얘는 손봐야 할 듯... 
			System.out.println("properties.do 오는지");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/properties.jsp");
			
		} else if (command.equals("/uc/LoginAction.do")) {
			action = new LoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("LoginAction 에러 : "+e);
			}
			
		} else if (command.equals("/uc/RegisterAction.do")) {
			action = new RegisterAction();
			try {
				forward = action.execute(request, response);
				
//				경고 창 나오는 것 아직 조치 중 0603
				response.setCharacterEncoding("UTF-8"); 
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				System.out.println("out은:" +out);				
//				out.println("<script>alert('계정이 등록 되었습니다'); location.href='./index.do';</script>");
//				out.flush();
				
			} catch (Exception e) {
				
//				경고 창 나오는 것 아직 조치 중 0603
//				response.setCharacterEncoding("UTF-8"); 
//				response.setContentType("text/html; charset=UTF-8");
//				out = response.getWriter();
//				out.println("<script>alert('계정 등록 실패했습니다'); location.href='./index.do';</script>");
//				out.flush();
				System.out.println("RegisterAction 에러 : "+e);
			}
			
		} else if (command.equals("/uc/ResetPassAction.do")) {
			action = new ResetPassAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("ResetPassAction 에러 : "+e);
			}
		} else if (command.equals("/uc/LogoutAction.do")) {
			action = new LogoutAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("LogoutAction 에러 : "+e);
			}
		} else if (command.equals("/uc/UserModifyAction.do")) {
			action = new UserModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("UserModifyAction 에러 : "+e);
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
