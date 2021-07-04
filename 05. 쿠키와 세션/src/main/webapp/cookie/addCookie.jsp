<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>쿠키 만들기 예제</title>
</head>
<body>
	<h1>쿠키 만들기 예제</h1>
	<hr>
	Cookie cookie new Cookie("user", "hong"); <br/>
	cookie.setMaxAge(2*60); // 초단위 : 2분 <br/>
	response.addCookie(cookie); // 웹클라이언트에 쿠키 정보를 저장
	
	<%
		Cookie cookie = new Cookie("user", "hong");
		cookie.setMaxAge(6 * 20);
		response.addCookie(cookie);
	%>
	
	<hr>
	<a href="addTimeCookie.jsp">현재 접속 시각을 쿠키로 추가</a>
</body>
</html>