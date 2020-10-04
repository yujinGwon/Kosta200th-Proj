package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.hotelbooking.dao.BookingDAO;
import net.hotelbooking.vo.BookingVO;
import net.hotelbooking.vo.RoomVO;
import net.hotelbooking.vo.UserListVO;

public class BookingInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BookingDAO dao = new BookingDAO();
		RoomVO roomVO = new RoomVO();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession(false);
		
		System.out.println("값들 : "+request.getParameter("h_id")+request.getParameter("r_id"));
		String email = (String) session.getAttribute("email");
		int r_id = Integer.parseInt(request.getParameter("r_id"));
		int u_id = 0, r_people=0, b_no=0, h_id=0;
		boolean result = false;

		try {
			b_no = dao.BookingSelectNum();
			h_id = dao.HotelSelectHID(r_id);
			u_id = dao.UserSelectUID(email);
			r_people = dao.RoomSelectPeople(r_id);
			result = dao.RoomUpdateAble(r_id);
			
			if (result == false) {
				System.out.println("업데이트 실패");
				return null;
			}
			System.out.println("업데이트 성공");
			
			result = dao.insert(b_no, u_id, h_id, r_id, r_people);

			if (result == false) {
				System.out.println("삽입 실패");
				return null;
			}
			System.out.println("삽입 성공");

			forward.setRedirect(true);
			forward.setPath("/tp_hotel_booking/uc/mypage.do");
			return forward;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
