package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.DashboardDAO;
import net.hotelbooking.vo.DashboardVO;

public class DashboardDeleteView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		DashboardDAO dao = new DashboardDAO();
		DashboardVO vo = new DashboardVO();
		
		int num = Integer.parseInt(request.getParameter("num"));
		vo = dao.getDetail(num);
				
		if(vo == null) {
			System.out.println("상세보기 삭제 실패");
			return null;
		}else {
			System.out.println("상세보기 삭제 완료");
		}
		
		request.setAttribute("vo", vo);
		forward.setRedirect(false);
		forward.setPath("/board/delete.jsp");
		return forward;		
	}

}
