package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.RoomDAO;

public class MainRoomListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RoomDAO dao = new RoomDAO();
		List list = new ArrayList();
		
		String h_location=request.getParameter("h_location");
		String r_type=request.getParameter("r_type");
		int r_people = Integer.parseInt(request.getParameter("r_people"));
		
		list = dao.mainselect(h_location, r_type, r_people);
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/roomlist.jsp");
		
		return forward;
	}
}
