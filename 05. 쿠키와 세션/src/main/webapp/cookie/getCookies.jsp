<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date, java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키 조회 하기</title>
</head>
<body>
<h1> 쿠키 조회 하기 </h1>
<hr>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies == null){
		out.println("쿠키가 없습니다.");
	}else {
		for (Cookie c : cookies){
			out.println("쿠키 이름(name) : " + c.getName() + ", ");
			
			if (!c.getName().equals("lastconnect")){
				out.println("쿠키 값(value) : " + c.getValue() + "<br />");
			}else{
				out.println("쿠키 값(value) : " + URLDecoder.decode(c.getValue(), "UTF-8") + "<br />");
			}
		}
	}
%>
</body>
</html>