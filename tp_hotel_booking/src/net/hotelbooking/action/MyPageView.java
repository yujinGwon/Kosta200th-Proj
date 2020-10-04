package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.hotelbooking.dao.BookingDAO;
import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.DashboardVO;
import net.hotelbooking.vo.UserListVO;

public class MyPageView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		UserListDAO dao = new UserListDAO();
		UserListVO vo = new UserListVO();
		BookingDAO BDao = new BookingDAO();
		List<DashboardVO> list = new ArrayList<DashboardVO>();
		HttpSession session = request.getSession(false);
		
		String email = (String) session.getAttribute("email");
		
		vo = dao.UserSelect(email);
		list = BDao.selectEmail(email);

		if (vo == null) {
			System.out.println("마이 페이지로 데이터 이동 실패");
			return null;
		}
		System.out.println("마이 페이지로 데이터 이동 완료");

		request.setAttribute("vo", vo);
		request.setAttribute("list", list);

		forward.setRedirect(false);
		forward.setPath("/user-profile.jsp");
		return forward;
	}

}
