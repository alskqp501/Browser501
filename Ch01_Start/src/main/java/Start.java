

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//여기는 java

@WebServlet("/ch02_start/Start") // 파일의 경로 // web의 start.html의 내용을 가져와서 값을 출력하려고 
public class Start extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 깨질때 
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		//html에 있는 <form action="/Start" 부분을 출력하려면 
		//서블릿에서 <% %> 햇던거랑 똑같이 
		String name = request.getParameter("name");
		
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>"+name+"환영합니다.</body></html>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
