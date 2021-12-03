

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//여기는 java이면서 servlet : 서버에서 돌아가는 자바 웹에서 쓰는 자바=jsp,servlet

//1. annotation 방식 - 권장 
@WebServlet("/ch02_start/Start") // 파일의 경로 // web의 start.html의 내용을 가져와서 값을 출력하려고 
public class Start extends HttpServlet {	// servlet인지 아는 방법: "HttpServlet " 를 상속 받았음
	private static final long serialVersionUID = 1L;

	//Get방식 : http://localhost:8080/Server_Ch01_Start/ch02_start/Start?name=hong
	//	=> request.getParameter("name");에 값이저장되어 서버에 보여짐 
	//sevlet에서 HttpServletRequest ""request""는 변수일 뿐이고 jsp에서 request 기본객체
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 깨질때 
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		//html에 있는 <form action="/Start" 부분을 출력하려면 
		//서블릿에서 <% %> 햇던거랑 똑같이 
		String name = request.getParameter("name");
		
		//html 출력 
		PrintWriter out = response.getWriter();
		out.println("<html><body>"+name+"환영합니다.</body></html>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
