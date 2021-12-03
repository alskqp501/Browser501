
import 속성을 사용하지 않고 클래스 이름 사용<br>
완전한 클래스 이름 사용 : java.util.Calendar <hr>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 사용</title>
</head>
<body>

<% java.util.Calendar cal = java.util.Calendar.getInstance(); %>

오늘은
<%=cal.get(java.util.Calendar.YEAR)%>년
<%=cal.get(java.util.Calendar.MONTH)+1%>월
<%=cal.get(java.util.Calendar.DATE)%>일
입니다.


</body>
</html>