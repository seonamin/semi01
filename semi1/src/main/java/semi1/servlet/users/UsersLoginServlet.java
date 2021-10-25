package semi1.servlet.users;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi1.beans.UsersDao;
import semi1.beans.UsersDto;

//로그인 처리 서블릿
@WebServlet(urlPatterns="/users/login.nogari")
public class UsersLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			req.setCharacterEncoding("UTF-8");
			//아이디, 비밀번호 파라미터 꺼내기
			String users_id = req.getParameter("users_id");
			String users_pw = req.getParameter("users_pw");
			System.out.println("ID"+users_id);
			System.out.println("PW:"+users_pw);
			
			//로그인 : 이미 등록된 회원인지 확인조회
			UsersDao usersDao = new UsersDao();
			UsersDto usersDto = usersDao.login(users_id, users_pw);
			boolean isUser = usersDto != null; //조회된 결과가 있다면 회원임
			
			if(isUser) {
				System.out.println("login success");
				//회원이라면 세션(keep)에 아이디 저장
				req.getSession().setAttribute("keep", users_id);
				//회원이라면 세션(keep)에 회원등급 저장
				req.getSession().setAttribute("grade", usersDto.getUsersGrade());
				//로그인 성공시 메인화면으로 이동
				resp.sendRedirect(req.getContextPath()+"/index.jsp");
			}
			else {
				System.out.println("login fail");
				//로그인 실패시 ?loginfail 파라미터 붙여서 메인화면으로 전송
				resp.sendRedirect("login.jsp?loginfail");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
