
 웹브라우저에서 f12 후 코드를 보면 맨 위의 2줄 공백이 생김  
  page trimDirectiveWhitespaces 를 true로 설정해주면 공백이 없어진다 <hr>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>

현재 시각 : <%=new java.util.Date() %>
</body>
</html>

<!-- 웹브라우저에서 f12 후 코드를 보면 맨 위의 2줄 공백이 생김  
  page trimDirectiveWhitespaces 를 true로 설정해주면 공백이 없어진다  
   -->
  
