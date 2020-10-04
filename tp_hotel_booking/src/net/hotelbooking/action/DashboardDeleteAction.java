package net.hotelbooking.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.DashboardDAO;

public class DashboardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		boolean result = false;

		int num = Integer.parseInt(request.getParameter("num"));
		String d_pass = request.getParameter("d_pass");
		
		DashboardDAO dao = new DashboardDAO();
		
		// 글쓴이 맞는지 판단
		boolean userCheck = dao.checkpass(num, d_pass);
		
		if(userCheck == false) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('글을 삭제할 권한이 없습니다.');");
			out.print("location.href='./list.do';");
			out.print("</script>");
			out.close();
			return null;
		}
		
		try {
			result = dao.delete(num);
			
			if(result == false) {
				System.out.println("게시판 삭제 실패");
			}else {
				if(result == true) {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.print("<script>");
					out.print("alert('글 삭제되었습니다.');");
					out.print("location.href='./list.do';");
					out.print("</script>");
					out.close();
					return null;
				}
				System.out.println("게시판 삭제 완료");
			}
			//forward.setRedirect(true);
			//forward.setPath("./list.do");
			//return forward;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
