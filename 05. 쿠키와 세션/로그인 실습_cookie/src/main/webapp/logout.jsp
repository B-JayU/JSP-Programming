<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃 페이지</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getValue().equals("admin")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		
		response.sendRedirect("login.html");	
	%>
</body>
</html>