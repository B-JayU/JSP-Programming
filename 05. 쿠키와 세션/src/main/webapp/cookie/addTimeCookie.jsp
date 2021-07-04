<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>현재 시각을 쿠키로 저장</title>
</head>
<body>
<h1> 현재 시각을 쿠키로 저장 </h1>
<hr>
String now = new java.util.Date().toString();
Cookie cookie = new Cookie("lastConnect", now);
cookie.setMaxAge(10);
response.addCookie(cookie);

<%
	String now = new java.util.Date().toString();
	Cookie cookie = new Cookie("lastconnect", URLEncoder.encode(now, "UTF-8"));
	cookie.setMaxAge(10);
	response.addCookie(cookie);
%>
<hr>
<a href="getCookies.jsp"> 쿠키 조회 </a>
</body>
</html>