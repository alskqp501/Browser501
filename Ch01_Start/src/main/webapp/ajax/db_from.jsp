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
<title>JSP::AJAX::DB</title>

</head>

<body>
<%
//오라클 데이터 베이터에서 슬랙트 명령을 통해 데이터를 가지고 오기 
//try.catch는 수동으로 써야됨 
try{
	//DB 연결 
	String driver = "oracle.jdbc.driver.OrcleDriver";
	String url ="jdbc.oracle:thin:@localhost:1521:orcl";
	Class.forName(driver); 
	Connection con = DriverManager.getConnection(url,"jsp","jsp");
	//sql 구문 실행하기 위한 Statement 객체 
	Statement stmt = con.createStatement();
	//sql 구문 
	String sql ="select * from join";
	//sql 실행 
	ResultSet rs = stmt.executeQuery(sql);
	//반복문으로 값 가져오기 (select할떄 )
	while(rs.next()){
		String name = rs.getString("name"); // 컬럼 이름 
		String age = rs.getString(2); // 인덱스2번 // 컬럼의 순서 
		String money = rs.getString("money");
		
		String strXML =""; // 이걸 태그로 만들어서 사용 (내가 만든 태그 ) 나중에 태그를 찾아서 출력만 해주면됨 
		strXML +="<join>"; 
		strXML +="<person>"; 
			strXML +="<name>"+name+"</name>";
			strXML +="<age>"+age+"</age>";
			strXML +="<salary>"+money+"</salary>";
		strXML +="</person>"; 
		strXML +="</join>"; 
		//out.write(name+ " : " + age + " : " + money); // strXML 변수 쓰기 전에 출력 형식 
		out.write(strXML);  // 출력 형식 // html에서 출력 
	}
	con.close();
	stmt.close();

}catch(Exception e){
	System.out.print(e.getMessage());
}
%>
</body>
</html>