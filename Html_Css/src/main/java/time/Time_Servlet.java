package time;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//SerVlet : web에서 수행되는 또 다른 자바 
//SerVlet (MVC model 1) : 클라이언트의 요청을 받아서 (http://localhost/Html_Css/time)서버에서 처리한 후 클라이언트에 html 문서 형태로 전달 
//(http://localhost/Html_Css/time) = Time_Servlet.java에서 만든거 , /time = 보안상의 이유로 우리가 만든걸 사용 
//SerVlet (MVC model 2) : 클라이언트의 요청을 받아서 서버에서 처리 한 후 결고를 jsp에 전달 , 브라우저에서 실행 

@WebServlet("/time")
public class Time_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8"); // 영어를 제외 글자가 꺠지기 떄문에 
		
		
		Calendar c = Calendar.getInstance(); // getInstance = > 싱클톤 /이 메소드 사용하면 캘린더의 모든 메소드 사용 가능 
		int hour = c.get(Calendar.HOUR_OF_DAY); // 대문자 = 고정상수
		int minute = c.get(Calendar.MINUTE);
		int second = c.get(Calendar.SECOND);
		System.out.println("서버의 시간을 콘솔 출력 : " + hour + "/" +minute + "/" + second);
PrintWriter pw = response.getWriter();

		pw.println("<html><body><br><br>"); //시작
		pw.println("Web에 출력 : " + hour + "/" +minute + "/" + second+ "<br>");
		pw.println("</body></html>"); // 끝내기 

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
