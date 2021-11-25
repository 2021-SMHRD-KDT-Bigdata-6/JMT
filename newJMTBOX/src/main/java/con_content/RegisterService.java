package con_content;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.MemberDAO;

@WebServlet("/RegisterService")
public class RegisterService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String nick =request.getParameter("nick");
		

		MemberDAO dao = new MemberDAO();
		int cnt = dao.RegisterService(id, pw, nick);
		if(cnt>0) { //성공
			System.out.println("서블릿 임무완수");
			response.sendRedirect("index.jsp");
		}else { // 실패
			response.sendRedirect("Register.jsp");
		}
		
	}
}
