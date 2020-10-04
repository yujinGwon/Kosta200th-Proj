package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.UserListVO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
//		System.out.println("로그인");
		
		UserListDAO dao = new UserListDAO();
		UserListVO vo = new UserListVO();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession(false);
		JSONObject obj = new JSONObject();
		int idPwdCheck = 0;
//		(u_id, u_pwd, u_name, u_phone, u_address, u_grade, u_email) 
		try {
			vo.setU_pwd(request.getParameter("u_pwd"));
			vo.setU_email(request.getParameter("u_email"));
//			System.out.println(vo.getU_pwd()+" "+vo.getU_email());
			if(dao.UserPassCheck(vo)) {
				System.out.println("로그인 되었습니다.");
				session.setMaxInactiveInterval(60); //1분간 유지 (default : 30분)
//				if(session !=null) 
				session.setAttribute("email", vo.getU_email()); // key : name, value : 홍길동
				idPwdCheck = 1;
			} else {
				System.out.println("로그인 실패!!!");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} // try end		
		obj.put("idPwdCheck", idPwdCheck);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
		return null;
	}

}
