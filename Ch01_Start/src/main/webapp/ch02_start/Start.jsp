<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String str = "환영합니다.";
 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- sevlet에서 HttpServletRequest ""request""는 변수일 뿐이고 jsp에서 request 기본객체 -->

 이름 : <%=request.getParameter("name") %> 환영합니다. 
</body>
</html>