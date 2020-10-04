package kr.kosta.bus.security.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import kr.kosta.bus.model.UserDTO;

public class UserLoginSuccessHandler 
	implements AuthenticationSuccessHandler {
//로그인 처리가 성공했을 때의 코드
	@Override
	public void onAuthenticationSuccess(
			HttpServletRequest request, 
			HttpServletResponse response,
			Authentication auth)
					throws IOException, ServletException {
		HttpSession session = request.getSession(true);
		//인증된 사용자의 정보 리턴
		UserDTO dto=(UserDTO)auth.getPrincipal();
		String msg=auth.getName()+"님 환영합니다.";
		session.setMaxInactiveInterval(60000);
		session.setAttribute("name", auth.getName());
		
		String ch = auth.getAuthorities().toString();
		
		if(ch.equals("[ROLE_ADMIN]")) session.setAttribute("dname", "관리자");
		else if(ch.equals("[ROLE_BC]")) session.setAttribute("dname", "배차팀");
		else if(ch.equals("[ROLE_HC]")) session.setAttribute("dname", "인사팀");
		else if(ch.equals("[ROLE_ACD]")) session.setAttribute("dname", "총무팀");
		else if(ch.equals("[ROLE_RC]")) session.setAttribute("dname", "정비팀");
		
		System.out.println();
		
		request.setAttribute("msg", msg); //request 영역에 저장
		
		System.out.println("-------------------");
		System.out.println(auth.getCredentials());
		System.out.println(auth.getDetails());
		System.out.println(auth.getName());
		System.out.println(auth.getPrincipal());
		System.out.println(auth.getAuthorities());
		System.out.println(auth.getClass());
		System.out.println("-------------------");
		
		// 시작페이지로 포워딩
		RequestDispatcher rd=request.getRequestDispatcher("/");
		rd.forward(request, response); 
		//response.sendRedirect(request.getContextPath()+ "/");
	}
	
}
