package net.hotelbooking.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.hotelbooking.dao.UserListDAO;
import net.hotelbooking.vo.UserListVO;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession(false);
		if(session !=null) session.removeAttribute("email");
		forward.setRedirect(true);
		forward.setPath("./index.do");
		return forward;
	}

}
