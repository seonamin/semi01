package semi1.servlet.users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi1.beans.UsersDao;

//회원탈퇴
@WebServlet(urlPatterns="/users/unregister.nogari")
public class UsersUnregisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String users_id = (String)req.getSession().getAttribute("keep");
			String users_pw = req.getParameter("users_pw");
			
			UsersDao usersDao = new UsersDao();
			boolean isquit = usersDao.usersDelete(users_id, users_pw);

			if(isquit) {
				req.getSession().removeAttribute("keep");
				req.getSession().removeAttribute("grade");
				//req.getSession().invalidate();
				System.out.println("회원탈퇴성공");
				resp.sendRedirect(req.getContextPath()+"/users/unregister_success.jsp");
				//상대경로 : quit_success.jsp
			}
			else {
				resp.sendRedirect("unregister.jsp?nomatch");
				System.out.println("회원탈퇴실패");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);	
		}
	}

}
