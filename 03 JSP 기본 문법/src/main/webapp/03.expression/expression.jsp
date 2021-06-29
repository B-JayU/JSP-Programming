<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>out.println 이용하기</h3>
	<%out.println(2 + 3); %>
	<hr>
	
	<h3>expression 이용하기</h3>
	<%= 2+3 %>
	<hr>
	
	<h3>스크립트릿 태그 반복출력</h3>
	<%
		String str = "스크립트릿 태그";
		for (int i = 0; i < 10; i++){
	%>
		<%= str + i%><br>	<!--  반환값이나 출력값에 대한 출력구 -->
	<% 	
		}
	%>
</body>
</html>