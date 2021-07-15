<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbean_contact.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbean_contact.AddrManager" scope="application" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align=center>
<h2> 주소록 </h2>
<hr>
<a href="addr_form.html"> 연락처 추가 </a>
<table border=1 width=500>
<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
</tr>
<%
	for (AddrBean ab : am.getAddrList()) { // List()에 객체가 하나씩 순
%>
	<tr>
	<td><%= ab.getUsername() %></td>
	<td><%= ab.getTel() %></td>
	<td><%= ab.getEmail() %></td>
	<td><%= ab.getSex() %></td>
	</tr>
<% 
	}
%>
</table>
</div>
</body>
</html>