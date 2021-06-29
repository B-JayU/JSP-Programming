<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>hello world : 안녕하세요</h2>
	<p>
		지금은 <%=new java.util.Date().toLocaleString() %> 입니다. 
	</p>
	<p>
		<%@ page import="java.util.Date" %>
		<% // 자바의 import 구문은 여러번 나올 수 있고 제일 상단에 위치하지 않아도 된다.  %>
		현재시각 : <%= new Date().toLocaleString()%>
	</p>
	
</body>
</html>