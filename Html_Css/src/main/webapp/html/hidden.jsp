<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%
   	 String fname = request.getParameter("fname");
     String custId = request.getParameter("custId");
     
     out.print("fname = " +fname +" / " +  "custId = " + custId); // 출력 
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
fname: <%=fname %><br>
custId: <%=custId %><br>



</body>
</html>