<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 </title>
</head>
<body>
로그인 성공 ::
Jsp :: <%=session.getAttribute("ids") %> <!--  id 값을 불러옴  --><br>
Jsp :: <%=session.getAttribute("pws") %> <!--  id 값을 불러옴  --><br>

EL => 표현 언어 
EL :: ${ids }<br>
EL :: ${pws }<br> <!--  id 값을 불러옴, key값  -->

</body>
</html>