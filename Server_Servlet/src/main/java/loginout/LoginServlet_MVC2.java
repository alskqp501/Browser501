package loginout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login/login_mvc2")
public class LoginServlet_MVC2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		PrintWriter out = response.getWriter();
		
		if(id.equals("admin") && pw.equals("1234")) {
		//HttpSession은 Java의 인터페이스(interface)이며, 이를 사용하여 세션(session)을 제어할 수 있습니다.
		HttpSession session = request.getSession();
		session.setAttribute("ids",id); // Attribute= 변수 // 변수를 저장하겠다  // (id, 값) // HttpSession's setAttribute("Key", Value)
		session.setAttribute("pws",pw); // Attribute= 변수 // 변수를 저장하겠다  // (id, 값)// session.setAttribute("속성명",속성값);
		RequestDispatcher d = request.getRequestDispatcher("../loginout/logout_mvc2.jsp");
		d.forward(request, response); // 요청과 응답을 보냄 
		}else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
