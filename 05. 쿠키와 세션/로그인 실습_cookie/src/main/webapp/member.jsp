<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member.jsp</title>
</head>
<body>
	<%
		boolean isMember = false;
		String userid = "";
		
		Cookie[] cookies = request.getCookies();
		
		if (cookies == null){
			out.println("쿠키가 없습니다.");
			response.sendRedirect("login.html");
		}
			
		else {
			for (Cookie c : cookies){
				
				if (c.getName().equals("user")){
					out.println("쿠키 이름(name) : " + c.getName() + ", ");
					out.println("쿠키 값(value) : " + URLDecoder.decode(c.getValue(), "UTF-8"));
					userid = URLDecoder.decode(c.getValue(), "UTF-8");
				}
			}
		}
	%>
	<br/>
	<%= userid %>님, 당신은 회원이 맞습니다.
	<a href="logout.jsp">로그아웃</a>
</body>
</html>