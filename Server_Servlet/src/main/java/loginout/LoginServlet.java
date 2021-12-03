package loginout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login/login") // 폴더/서블릿
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//한글 깨질때 
				response.setContentType("text/html");
				response.setCharacterEncoding("utf-8");
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				
			
				PrintWriter out = response.getWriter();
				out.println("<html><body> id : "+id + "pw : " + pw+"</body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
