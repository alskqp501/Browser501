<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    String no = request.getParameter("no");
    if(no != null){
    	//로그인된 상태 
    	out.println("로그인된 상태입니다."); // System : 콘솔에 출력, out은 브라우저에 출력..?
    }else{
    	out.println("로그인이 안된 상태 입니다.");
    }
    out.println("<br>넘어온 번호는 "+ no + " 입니다."); 
    %>
    
    
<!--    // 문자열로 던져주면 html이 옴  , html부분 필요없어..  -->
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->

<!-- </body> -->
<!-- </html> -->