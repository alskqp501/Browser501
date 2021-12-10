<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC model 2 :: View</title>
</head>
<body>
URL : hppt://localhost:8080/Server_Servlet/simple<br>
type:date한 경우 => 날짜 출력<br><hr>

결과 (JSP - Attribute(속성))<br>
<%=request.getAttribute("result") %><br>
<br>
결과 (EL Attribute(속성))<br>
type : ${result}<br>   
<hr>

결과2 (JSP - Parameter)<br>
<%= request.getParameter("type")%><br>

결과2(EL - Parameter)<br>
type : ${param.type}


<br>
</body>
</html>