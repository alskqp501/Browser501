
charset 잘못 지정햇을 때 출력값의 글자가 올바르지 않음 <hr>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
 pageEncoding="UTF-8"%>
    
    
    
 <%
 Date now = new Date();
 
 %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
현재 시각 : 
<%=now %>
</body>
</html>