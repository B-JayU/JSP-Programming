<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
	<%
		String userid = request.getParameter("userid");
		out.println("[" + userid + "]");
		
		if (userid != null && userid.equals("admin")){
			session.setAttribute("userid", userid);
			session.setMaxInactiveInterval(5);
			
			response.sendRedirect("member.jsp");
		}else{ // if (userid == null || !userid.equals("admin"))
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>