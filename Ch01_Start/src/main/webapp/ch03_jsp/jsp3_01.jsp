<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  1행 ~ jsp 페이지에 대한 설정 정보   
contentType="text/html; charset=UTF-8" => jsp가 생성할 문서가 html이고 문서의 캐릭터셋이 utf-8
  -->
    
    <!-- 여기서부터 끝까지 생성부분 : html 코드 및 jsp스크립트  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 문서의 제목</title>
</head>
<body>
<p>
jsp의 주된 목적은 웹 브라우저에 보여줄 html문서를 생성하는 것이다 <br>
jsp를 사용하여 파일 다운로드를 구현할 수 있고 대부분 jsp코드는 html을 생성<br>
jsp는 크게 설정부분과 응답 부분으로 구성<hr> 
<p>




<%
String bookTitle="JSP 프로그래밍";
String author = "최범균";

%>

<b> <%=bookTitle %><b> (<%=author %>) 입니다. 
</body>
</html>