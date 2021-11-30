<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
     <%
    String fname = request.getParameter("fname" );
    String lname = request.getParameter("lname" );
    %>
    
<!--     requset.getParameter(name); -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
First Name :<%=fname %><br>
Last Name :<%=lname %>
</body>
</html>