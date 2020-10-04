package net.hotelbooking.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.UserListVO;

public class RegisterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
//		System.out.println("회원가입");
		
		UserListDAO dao = new UserListDAO();
		UserListVO vo = new UserListVO();
		ActionForward forward = new ActionForward();

		boolean result = false;
		System.out.println(request.getParameter("u_pwd"));
		if(!request.getParameter("u_pwd").equals(request.getParameter("u_pwdre"))) {
			System.out.println("비밀번호가 틀립니다.");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<script language='javascript'>");
			out.println("alert('wrong password!!!');");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			out.close();
			
			return null;
		}
//		(u_id, u_pwd, u_name, u_phone, u_address, u_grade, u_email) 
		try {
			vo.setU_pwd(request.getParameter("u_pwd"));
			vo.setU_name(request.getParameter("u_name"));
			vo.setU_phone(request.getParameter("u_phone"));
			vo.setU_address(request.getParameter("u_address"));
			vo.setU_grade(1);
			vo.setU_email(request.getParameter("u_email"));
			
			if(!dao.UserSelectCheck(vo)) {
				System.out.println("이미 존재하는 이메일입니다.");
				PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=utf-8");
				out.println("<script language='javascript'>");
				out.println("alert('Existing email!!!');");
				out.println("history.back();");
				out.println("</script>");
				out.flush();
				out.close();
				
				return null;
			}
			result = dao.UserListInsert(vo); //
			System.out.println("dao 갔다 왔니? result : " + result);
			
			if( result == false ) {
				System.out.println("아이디 등록 실패!");
				return null;
			}
			System.out.println("아이디 등록 완료");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=utf-8");
			out.println("<script language='javascript'>");
			out.println("alert('Welcome Our Service!!!');");
			out.println("location.href='/tp_hotel_booking/uc/login.do';");
			out.println("</script>");
			out.flush();
			out.close();
			
			return null;
													
		} catch (Exception e) {
			e.printStackTrace();
		} // try end			
		
		return null;
	}

}
