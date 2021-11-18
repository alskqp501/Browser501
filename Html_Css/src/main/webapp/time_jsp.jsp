<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--"<% "는 서버에서 실행한다는뜻  --%>
jsp : web서버에서 실행되는 또 다른 java
JSP(MVC model 1) : 클라이언트의 요청(http://localhost/Html_Css/time_jsp.jsp) 을 서버의 jsp가 받아서 처리 후 html문서로 브라우저에 전달 
JSP(MVC model 2) : 클라이언트의 요청을 servlet이 받아서 처리한 후 jsp를 통해 브라우저에 전달  

<%
Calendar c = Calendar.getInstance(); // getInstance = > 싱클톤 /이 메소드 사용하면 캘린더의 모든 메소드 사용 가능 
int hour = c.get(Calendar.HOUR_OF_DAY); // 대문자 = 고정상수
int minute = c.get(Calendar.MINUTE);
int second = c.get(Calendar.SECOND);
System.out.println("서버의 시간을 콘솔 출력 : " + hour + "/" +minute + "/" + second);

out.println("<br><br>");
out.println("Web에 출력 : " + hour + "/" +minute + "/" + second+ "<br>");
%>

Web에서 현재 시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.
</body>
</html>





