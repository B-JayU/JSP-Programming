<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<div align = "center">
	<h2>application 예제</h2>
	<hr>
	
	 <p> username 에 설정된 값은 : <%= application.getAttribute("username") %> </p>
	 <%
	 	Integer count = (Integer)application.getAttribute("count");
	 	int cnt = count.intValue() + 1;
	 	application.setAttribute("count", cnt);
	 %>
	 count : <%= cnt %>
</div>
</body>
</html>