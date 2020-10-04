package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.hotelbooking.dao.ReplyDAO;
import net.hotelbooking.vo.DashboardVO;

public class ReservationDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forword = new ActionForward();
		boolean result = false;
		
		int d_no2 = Integer.parseInt(request.getParameter("d_no2"));
		System.out.println(d_no2);
		ReplyDAO redao = new ReplyDAO();
		DashboardVO vo = new DashboardVO();
		
		try {
			
			result = redao.boardDelete(d_no2);
			if(result == false) {
				System.out.println("게시판 삭제 실패");
				return null;
			}
			System.out.println("게시판 삭제 완료");
			
			forword.setRedirect(true);
			forword.setPath("/tp_hotel_booking/hc/hotel.do");
			return forword;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
