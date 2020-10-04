package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.RoomDAO;

public class IndexSortAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RoomDAO dao = new RoomDAO();
		List list = new ArrayList();
		
		list = dao.mainsort();
		
		System.out.println("mainsort 넘어오는지");
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/index.jsp");
		
		return forward;
	}

}
