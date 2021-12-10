<%@   page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
				
			
// PrintWriter out = response.getWriter(); // servlet에서만 사용 가능 
out.println("<html><body> id : "+id + "pw : " + pw+"</body></html>");
	
	%>

</body>
</html>