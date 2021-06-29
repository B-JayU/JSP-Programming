<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주석 예1</title>
</head>
<body>
<h1> HTML 주석 vs. JSP 주석</h1>

<!-- 이것은 HTML 주석, 브라우저에서 확인 가능 -->

<%-- 이것은 JSP 주석, 이 파일에서만 확인 가능 --%>

<%
	// 이것은 자바의 주석
	
	/*
		자바의 주석은 브라우저에서 확인 불가,
		변환된 .java 소스 코드에서만 확인 가능
	*/
	
%>

<!-- 지금은 <%= new java.util.Date() %> 입니다. -->

<h2>지금은 <%= new java.util.Date() %> 입니다.</h2>
</body>
</html>