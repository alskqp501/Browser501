<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!--  @ page = 페이지 디렉티브 @ => 디렉티브  -->   
    
    
    <% request.setCharacterEncoding("utf-8"); // post 방식으로 값 가져올떄 한글 꺠짐 
        
//     String num = request.getParameter("num");
//     String name = request.getParameter("name");
//     String grade = request.getParameter("grade");
//     String study = request.getParameter("study");
        
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table,tr, td {
border: 1px solid ;
width: 30%
}

td, tr{
text-align: center;
}

</style>

<body>

<!-- 여기는 값  -->



<table>
<caption><h1>학생 정보</h1></caption>
	<tr>
	<td>학번</td>
	<td><%=request.getParameter("num") %> </td></tr>
<!--  표현 방법 여러가지  -->
	<%--<td> ${param.name}</td> --%>
	<%-- <td> out.println(num);</td> --%> 
	
	
	<tr>
	<td>이름</td>
	<td><%=request.getParameter("name") %></td>
	</tr>
	
	<tr>
	<td>학년</td>
	<td><%=request.getParameter("grade") %></td>
	</tr>
	
	<tr>
	<td>선택과목</td>
	<td><%=request.getParameter("study") %></td>
	</tr>
</table>


</body>
</html>