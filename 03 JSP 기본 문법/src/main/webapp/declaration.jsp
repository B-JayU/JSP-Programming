<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언의 간단한 예시</title>
</head>
<body>
<% int i = 0; %>
<h2> 지역변수 i = <%= ++i %></h2>
<h2> 멤버변수 m = <%= ++m %></h2>
<%! int m = 0; // 출력구문이 선언부분보다 먼저 위치하게 된다.%>
</body>
</html>