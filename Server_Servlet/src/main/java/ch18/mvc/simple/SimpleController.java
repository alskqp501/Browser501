package ch18.mvc.simple;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL Servlet Mapping 방법 1  - Annotation
@WebServlet("/ch18/simple")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		ProcessRequest(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	protected void ProcessRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type"); // 파라미터의 'name' 값을 받아오기 
		
		//파라미터의 값 조건식 
		Object resultObject = null;
		if((type==null)|| type.equals("greeting")) { // type 이 null 이거나 greeting같은 문자열일 경우 
		resultObject = "안녕하세요."; // 안녕하세요 출력 
		}else if(type.equals("date")){ 	// type이 date와 같다면 
			resultObject = new Date(); // date를 출력 
		}else {
			resultObject = "Invalid Type"; // 그렇지않으면 Invalid Type 문자열을 출력 하세요 
		}
		request.setAttribute("result", resultObject);	
		
		//Attribute , parameter 를 view로 전달가능 
		RequestDispatcher d = request.getRequestDispatcher("simpleView.jsp");
		d.forward(request, response);
	}
	
}
