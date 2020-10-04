package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.RoomDAO;

public class AllRoomListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RoomDAO dao = new RoomDAO();
		List list = new ArrayList();
		
		list = dao.allselect();
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/roomlist.jsp");
		
		return forward;
	}

}
