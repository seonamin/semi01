package semi1.servlet.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi1.beans.UsersDao;
import semi1.beans.UsersDto;

//회원가입(등록) 처리
@WebServlet(urlPatterns="/users/register.nogari")
public class UsersRegisterServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			
			UsersDto usersDto = new UsersDto();
			usersDto.setUsersId(req.getParameter("users_id"));
			usersDto.setUsersPw(req.getParameter("users_pw"));
			usersDto.setUsersNick(req.getParameter("users_nick"));
			usersDto.setUsersEmail(req.getParameter("users_email"));
			usersDto.setUsersPhone(req.getParameter("users_phone"));

			//회원가입 메소드
			UsersDao usersDao = new UsersDao();
			usersDao.joinUsers(usersDto);
			
			//회원가입 완료시 가입성공 페이지로 이동
			 resp.sendRedirect("register_success.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
