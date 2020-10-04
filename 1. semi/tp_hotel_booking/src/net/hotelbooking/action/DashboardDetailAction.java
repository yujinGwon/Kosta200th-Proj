package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.DashboardDAO;
import net.hotelbooking.vo.DashboardVO;


public class DashboardDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		
		DashboardDAO dao = new DashboardDAO();
		DashboardVO vo = new DashboardVO();
		
		int num = Integer.parseInt(request.getParameter("num")); // <a href="./detail.do?num=${vo.d_no1 }">${vo.d_title }</a>
		
		vo = dao.getDetail(num); 
		
		if(vo == null) {
			System.out.println("상세보기 실패");
			return null;
		}
		
		System.out.println("상세보기 성공");
		
		request.setAttribute("vo", vo);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/board/detail.jsp");
		
		return forward;		
	}
}
