package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.DashboardDAO;
import net.hotelbooking.vo.DashboardVO;
import net.hotelbooking.vo.RoomVO;

public class DashboardInsertAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		DashboardDAO dao = new DashboardDAO();
		DashboardVO vo = new DashboardVO();
		ActionForward forward = new ActionForward();
		
		boolean result = false;
		
		try {
			vo.setD_u_name(request.getParameter("d_u_name"));
			vo.setD_pass(request.getParameter("d_pass"));
			vo.setD_title( request.getParameter("d_title"));
			vo.setD_content(request.getParameter("d_content"));
			
			result = dao.insert(vo);
			if(result == false) {
				System.out.println("실패");
				return null;
			}
			System.out.println("성공");
			
			forward.setRedirect(true);
			forward.setPath("../dc/list.do");
			return forward;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}  
}

