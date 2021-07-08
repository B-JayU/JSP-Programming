<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니 현황</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
/*
	class prod_info{
		String prod_name;
		int prod_cnt;
		
		prod_info(){
			prod_name="";
			prod_cnt = 0;
		}
	}
	*/
	
	
	String product = request.getParameter("product");
	int cnt = Integer.parseInt(request.getParameter("count"));
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("productlist");
	ArrayList<Integer> list_cnt = (ArrayList<Integer>)session.getAttribute("productcntlist");
	
	if (list == null) {
		list = new ArrayList<String>();
		session.setAttribute("productlist", list);
	}
	
	if (list_cnt == null) {
		list_cnt = new ArrayList<Integer>();
		session.setAttribute("productcntlist", list_cnt);
	}
	
	
	list.add(product);
	list_cnt.add(cnt);
%>
<script>
	alert("<%= product %>이(가) <%= cnt%>개가 추가되었습니다!");
	history.go(-1);
</script>
	

</body>
</html>