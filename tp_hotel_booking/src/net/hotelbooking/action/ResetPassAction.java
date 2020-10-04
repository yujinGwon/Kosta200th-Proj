package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.component.Gmail;
import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.UserListVO;


public class ResetPassAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
//		System.out.println("비밀번호 리셋");
		
		UserListDAO dao = new UserListDAO();
		UserListVO vo = new UserListVO();
		ActionForward forward = new ActionForward();

		boolean result = false;
		
		String resetPassword = "";
		for (int i = 0; i < 7; i++) {
			double dValue = Math.random();
			if(i%2==0)
				resetPassword += (char) ((dValue * 26) + 65); // 대문자
			else
				resetPassword += (int)(dValue * 10);
		}
		
		try {
			vo.setU_email(request.getParameter("u_email"));
			
			if(dao.UserSelectCheck(vo)==true) {
				System.out.println("이메일이 없습니다.");
				forward.setRedirect(true);
				forward.setPath("./password.do");
				return forward;
			}
			
			result = dao.UserUpdate(resetPassword, vo); //
			System.out.println("dao 갔다 왔니? result : " + result);			
			
			Gmail.gmailSend(resetPassword, vo.getU_email());
			System.out.println("임시 비밀번호 발송 성공");
			
			forward.setRedirect(true);
			forward.setPath("./login.do");
			return forward;
													
		} catch (Exception e) {
			e.printStackTrace();
		} // try end			
		
		return null;
	}

}
