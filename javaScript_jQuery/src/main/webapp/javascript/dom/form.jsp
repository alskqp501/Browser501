
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
     request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
     %>
    
    <%
    String fname = request.getParameter("fname" );
    %>
    
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>dom_form.html 요청 받아 서버에서 출력하기 </title>
</head>
<body>

Name: <%=fname %><br>
</body>
</html>