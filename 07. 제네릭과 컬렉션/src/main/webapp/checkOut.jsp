<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>선택 상품 목록 화면</title>
</head>
<body>

<center>
<h2>장바구기 목록</h2>
<hr/>
<%= session.getAttribute("username") %>님의 장바구니 목록<br/>
<hr/>	
	
	<%
		ArrayList list = (ArrayList)session.getAttribute("productlist");
		ArrayList list_cnt = (ArrayList)session.getAttribute("productcntlist");
		if (list == null || list_cnt == null) {
			out.println("선택한 상품이 없습니다. <br/>");
		}
		else {
			
			out.println("<table border=1>");
			out.println("<th>상품명 <th>수량");
			
			for (int i = 0; i < list.size(); i++){
				out.println("<tr><td>" + list.get(i) + "</td><td>" + list_cnt.get(i) + "</td></tr>");
			}
			out.println("</table>");
		}
	%>
	<a href="selProduct.jsp">상품목록 </a>
	<!-- 상품목록 가기 누르면... username이 유지되지 않음 -> 해결해야할 문제 -->
</center>
</body>
</html>