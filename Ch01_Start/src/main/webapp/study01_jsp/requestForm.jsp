<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 내장객체 예제</title>
</head>
<body>
<!-- 여기는 form 
입력완료를 누르면 requestResult.jsp 파일에 이름과(name)값이 담겨서 보여짐
-->
<form action="requestResult.jsp" method="post">
학번 : <input type = "text" name="num" value="1234" ><br>
이름 : <input type = "text" name="name" value="홍길동" ><br>

학년 : <input type="radio" name ="grade" value="1학년" checked="checked">1학년&nbsp; <!-- 한칸 띄우기(공백) : &nbsp; -->
		<input type="radio" name ="grade" value="2학년">2학년&nbsp;
		<input type="radio" name="grade" value="3학년">3학년&nbsp;
		<input type="radio" name="grade" value="4학년"> 4학년<br>
		
선택과목 : <select name ="study">
    <option value="JAVA">JAVA</option>
    <option value="JQUERY">JQUERY</option>
    <option value="AJAX">AJAX</option>
    <option value="JAVASCERIPT">JAVASCERIPT</option>
	</select><br>
<button>입력완료</button><br>
</form>
</body>
</html>


<!-- 라디오 박스 => 중복 선택 안하게 하는거, name 이름을 같게 해주면 하나만 선택 가능 
기본체크값 지정은 => checked="checked" -->



