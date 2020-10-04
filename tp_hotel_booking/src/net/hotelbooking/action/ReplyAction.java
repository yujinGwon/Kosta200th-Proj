package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.hotelbooking.dao.ReplyDAO;
import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.DashboardVO;

public class ReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	ReplyDAO redao = new ReplyDAO();
	DashboardVO vo = new DashboardVO();
	ActionForward forward = new ActionForward();
	HttpSession session = request.getSession(false);
	String email = (String)session.getAttribute("email");
	boolean result = false;
	int u_id = 0, num=0;
	
	
	try {
		vo.setD_u_name(email);
		vo.setD_content(request.getParameter("D_CONTENT"));
		
		u_id = redao.isUserlistUid(email);
		vo.setD_u_id(u_id);
		
		num = redao.countNum();
		result = redao.boardInsert(vo, num);
		System.out.println("dao 갔다 왔다 result : " + result);
		
		if(result == false) {
			System.out.println("게시판 등록 실패");
			return null;
		}
		System.out.println("게시판 등록 완료");
		
		forward.setRedirect(true);
		forward.setPath("/tp_hotel_booking/hc/hotel.do"); // modified
		return forward;
	
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return null;
	}
}
