<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="jspbean.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<center>
<h2> 로그인 예제 </h2>
<HR>

<%
	if(!login.checkUser()) {
		out.println("로그인 실패 !!");
	}
	else {
		out.println("로그인 성공 !!");
	}
%>

<HR>
사용자 아이디: <jsp:getProperty name="login" property="userid"/><BR>
사용자 패스워드: <jsp:getProperty name="login" property="passwd" />

</center>
</body>
</html>