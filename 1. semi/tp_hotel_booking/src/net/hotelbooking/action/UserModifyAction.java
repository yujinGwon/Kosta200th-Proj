package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.UserListVO;

public class UserModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
//		System.out.println("로그인");
		
		UserListDAO dao = new UserListDAO();
		UserListVO vo = new UserListVO();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession(false);
		String beforeEmail = (String) session.getAttribute("email");
		
		boolean result = false;
		
		if( ( !request.getParameter("u_pwd").equals(request.getParameter("u_pwdre")) ) || 
				( request.getParameter("u_pwd") == "" && request.getParameter("u_pwdre") == "")) {
			System.out.println("비밀번호가 같지 않습니다.");
			forward.setRedirect(true);
			forward.setPath("./index.do");
			return forward;
		}
//		(u_id, u_pwd, u_name, u_phone, u_address, u_grade, u_email) 
		try {
			vo.setU_name(request.getParameter("u_name"));
			vo.setU_pwd(request.getParameter("u_pwd"));
			vo.setU_email(request.getParameter("u_email"));
			vo.setU_address(request.getParameter("u_address"));
			vo.setU_phone(request.getParameter("u_phone"));
			
			System.out.println(vo.getU_name()+" "+vo.getU_pwd()+" "+vo.getU_email()+" "+vo.getU_address()+" "+vo.getU_phone());
			
			result = dao.UserUpdateAll(beforeEmail, vo); //
			System.out.println("dao 갔다 왔니? result : " + result);
			
			session.removeAttribute("email");
			
			session.setMaxInactiveInterval(60);
			session.setAttribute("email", vo.getU_email()); 
			
			forward.setRedirect(true);
			forward.setPath("./index.do");
			return forward;
													
		} catch (Exception e) {
			e.printStackTrace();
		} // try end			
		
		return null;
	}

}
