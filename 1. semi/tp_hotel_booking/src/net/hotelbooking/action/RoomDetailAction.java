package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.RoomDAO;

public class RoomDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RoomDAO dao = new RoomDAO();
		List list = new ArrayList();
		
		int r_id = 0;
		
		if(request.getParameter("r_id") != null) {
			r_id = Integer.parseInt(request.getParameter("r_id"));
		}
		
		list = dao.detail(r_id);
		
		request.setAttribute("list", list);
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/roomdetail.jsp");
		
		return forward;
	}



}
