package semi1.servlet.users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//로그아웃 처리 서블릿
@WebServlet(urlPatterns="/users/logout.nogari")
public class UsersLogoutServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			//로그아웃시 세션정보 삭제
			req.getSession().removeAttribute("keep");
			req.getSession().removeAttribute("grade");
			
			
			//로그아웃 완료시 메인화면으로 이동
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	
	}
	
}
