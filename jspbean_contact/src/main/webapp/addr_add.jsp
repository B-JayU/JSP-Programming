<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbean_contact.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>

<jsp:useBean id="am" class="jspbean_contact.AddrManager" scope="application"/>

<%
	am.add(addr);
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> 등록내용 </h2>
이름 : <jsp;getProperty="username" name="addr"/><p>
전화번호 : <%=addr.getTel() %><p>
이메일 : <%=addr.getEmail() %> <p>
성별 : <%=addr.getSex() %><p>
<hr>
<a href="addr_list.jsp"> 목록 보기 </a>
</center>
</body>
</html>