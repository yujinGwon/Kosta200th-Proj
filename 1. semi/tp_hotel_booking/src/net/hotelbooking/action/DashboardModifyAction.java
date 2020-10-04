package net.hotelbooking.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.DashboardDAO;
import net.hotelbooking.vo.DashboardVO;

public class DashboardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		boolean result = false;
		
		int num = Integer.parseInt(request.getParameter("num"));
		String d_pass = request.getParameter("d_pass");
		
		DashboardDAO dao = new DashboardDAO();
		DashboardVO vo = new DashboardVO();
		
		// 글쓴이 맞는지 판단
		boolean userCheck = dao.checkpass(num, d_pass);
		
		if(userCheck == false) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('글을 수정할 권한이 없습니다.');");
			out.print("location.href='./list.do';");
			out.print("</script>");
			out.close();
			return null;
		}
		
		try {
			vo.setD_no1(num);
			vo.setD_pass(d_pass);
			vo.setD_title(request.getParameter("d_title"));
			vo.setD_content(request.getParameter("d_content"));
						
			result = dao.modify(vo);
			
			if(result == false) {
				System.out.println("게시판 수정 실패");
				return null;
			}else {
				System.out.println("게시판 수정 완료");
			}
			
			forward.setRedirect(true);
			forward.setPath("../dc/detail.do?num=" + vo.getD_no1());
			
			return forward;
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return null;
	}
}
