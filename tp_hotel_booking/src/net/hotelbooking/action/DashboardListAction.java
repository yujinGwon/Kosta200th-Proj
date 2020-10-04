package net.hotelbooking.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.DashboardDAO;


public class DashboardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		
		DashboardDAO dao = new DashboardDAO();
		List list = new ArrayList();
		
		int page = 1;
		int limit = 10;
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		int listcount = dao.selectcount();
		list = dao.select(page, limit);
		
	
		int maxPage = (int) ((double) listcount / limit + 0.95);
		int startPage = (( (int) ((double) page / 10 + 0.95)) - 1) * 10 + 1;
		int endPage = startPage + 10 - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 이부분이 뭔지 잘 모르겠음... 요청객체에 저 변수에 저 값을 넣어놓고
		// 나중에 또 요청받으면? 그 변수의 값들을 쓰겠다는 건가???
		request.setAttribute("page", page);
		request.setAttribute("maxpage", maxPage);
		request.setAttribute("startpage", startPage);
		request.setAttribute("endpage", endPage);
		request.setAttribute("listcount", listcount);
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("../board/list.jsp");
		
		return forward;
	}
}


