<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<% 
String name = request.getParameter("name");
String age =  request.getParameter("age");
String salary =  request.getParameter("salary");
%>



<%
//오라클 데이터 베이터에서 슬랙트 명령을 통해 데이터를 가지고 오기 
//try.catch는 수동으로 써야됨

try{
	//DB 연결 
	String driver = "oracle.jdbc.driver.OrcleDriver";
	String url ="jdbc.oracle:thin:@localhost:1521:orcl";
	Class.forName(driver); 
	Connection con = DriverManager.getConnection(url,"jsp","jsp");
	
	//sql 실행하기 위한 Statement 객체 
	Statement stmt = con.createStatement();
	//sql 구문 실행 
	String sql ="insert into join values('"+name+"',"+age+","+salary+")";  // 넣을 값
	stmt.executeUpdate(sql); // 실행
	con.close(); // 닫기
	stmt.close();
	
//(select 부분 -- !!!!insert하고는 관련이없음!!!)
	//sql 구문 받아서 
	//ResultSet rs = stmt.executeQuery(sql);
	//반복문으로 값 가져오기 
// 	while(rs.next()){
// 		String name = rs.getString("name"); // 컬럼 이름 
// 		String age = rs.getString(2); // 인덱스2번 // 컬럼의 순서 
// 		String money = rs.getString("money");
		
// 		out.write(name+ " : " + age + " : " + money); // 출력 형식 
//	}
	
}catch(Exception e){
	System.out.print(e.getMessage());
}
%>

</body>
</html>