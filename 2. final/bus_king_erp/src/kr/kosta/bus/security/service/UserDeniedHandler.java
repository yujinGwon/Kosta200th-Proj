package kr.kosta.bus.security.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class UserDeniedHandler 
	implements AccessDeniedHandler {

//사용권한이 없을 때 지정한 페이지로 이동
	@Override
	public void handle(HttpServletRequest req
			, HttpServletResponse res, AccessDeniedException ade)
			throws IOException, ServletException { 
		req.setAttribute("errMsg", "권한이 없습니다.");
		
		String url="/WEB-INF/views/user/denied.jsp";
		RequestDispatcher rd=req.getRequestDispatcher(url);
		rd.forward(req, res);
//		req.getRequestDispatcher(
//				"/WEB-INF/views/user/denied.jsp").forward(req, res);
	}
	
}





