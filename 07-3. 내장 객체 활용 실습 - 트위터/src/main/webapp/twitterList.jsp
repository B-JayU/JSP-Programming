<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");

	String username = request.getParameter("username");
	if (username != null) 
		session.setAttribute("username", request.getParameter("username"));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>트위터 메인 화면</title>
</head>
<body>
		<h3>My Simple Twitter!</h3>
		<hr />
		<div>
			<form method="POST" action="tweet.jsp">
				@<%= session.getAttribute("username") %>
				<input type="text" name="msg"><input type="submit" value="Tweet">
			</form>
		</div>
		<hr/>
		<div>
		<%
			ArrayList<String> msgs = (ArrayList<String>) application.getAttribute("msgs");
			if (msgs != null)
				for (String msg : msgs)
					out.println("<li>" + msg + "</li>");
		%>
		</div>	
</body>
</html>