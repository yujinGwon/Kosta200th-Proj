package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.RoomDAO;

public class RoomListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RoomDAO dao = new RoomDAO();
		List list = new ArrayList();
		
		int h_id = 0;
		
		if(request.getParameter("h_id") != null) {
			h_id = Integer.parseInt(request.getParameter("h_id"));
		}
		
		list = dao.select(h_id);
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/roomlist.jsp");
		
		return forward;
	}
}
