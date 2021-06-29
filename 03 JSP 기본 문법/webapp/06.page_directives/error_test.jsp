<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error_handler.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러 포함</title>
</head>
<body>
<h2>정수 변환 에러 포함</h2>
<%
	String str = "1234";
	str = "hello";
	int i = Integer.parseInt(str);
%>
</body>
</html>