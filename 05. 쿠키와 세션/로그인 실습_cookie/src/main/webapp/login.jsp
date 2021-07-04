<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
	<%
		String user = request.getParameter("userid");
		
		if (user != null && user.equals("admin")){
			Cookie cookie = new Cookie("user", user);
			cookie.setMaxAge(10);
			response.addCookie(cookie);
			response.sendRedirect("member.jsp");
		}else{
			
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>