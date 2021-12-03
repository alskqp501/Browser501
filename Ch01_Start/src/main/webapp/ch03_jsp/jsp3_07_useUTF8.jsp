
pageEncoding 에 지정한 인코딩이 charset 속성에 지정한 인코딩과 다를 수 있다 <br>
jsp 파일은 utf-8로 작성하고 응답 결과는 euc-kr로 생성하고 싶다면 아래와 같이 지정 <br>
 * jsp 파일 : => pageEncoding="UTF-8"<br>
 * 응답 결과 : => charset=euc-kr<hr>


<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Date now = new Date(); %>

현재 시각 :
<%=now %>
</body>
</html>