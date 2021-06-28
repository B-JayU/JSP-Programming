<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>선언의 예2</title>
</head>
<body>
	<%!
		double radius = 10;
	
		public double getArea(double r) {
			return r * r * 3.14159;
		}
	%>
	
	<p>반지름 <%= radius %>인 원의 넓이는 <%= getArea(radius) %>입니다.</p>
</body>
</html>