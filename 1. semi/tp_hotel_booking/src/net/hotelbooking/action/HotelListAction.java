package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.HotelDAO;
import net.hotelbooking.dao.ReplyDAO;
import net.hotelbooking.vo.DashboardVO;

public class HotelListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HotelDAO dao = new HotelDAO();
		ReplyDAO redao = new ReplyDAO();
		DashboardVO vo = new DashboardVO();
		
		
		List list = new ArrayList();
		List reList = new ArrayList();
		
		list = dao.select();
		reList = redao.selectReply();
		
		System.out.println("hoteal select 넘어오는지");
		
		request.setAttribute("list", list);
		request.setAttribute("reList", reList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/hotel.jsp");
		
		return forward;
	}

}
