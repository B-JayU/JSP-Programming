<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.println("스크립트릿 태그"); %>
	<hr>
	<%
		for (int i = 0; i < 10; i++){
			out.println("스크립트릿 태그" +i); // 개행문자를 추가하지 않
	%>
	<br> <!-- HTML <br> 태그로 개행문자를 대신함. -->
	<%
		} // 중괄호는 자바코드이므로 스크립트릿에 넣는다.
	%>
</body>
</html>