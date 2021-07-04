<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member.jsp</title>
</head>
<body>
	<%
		boolean isMember = false;
		
		String userid = (String) session.getAttribute("userid");
		if (userid != null){
			isMember =  true;
		}
		
		if (!isMember)
			response.sendRedirect("login.html");
	%>
	<%= userid  %> 님, 당신은 회원이 맞습니다.<br/>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>