<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.Date"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg"); // submit으로 전달하는 페이지로부터 request 객체를 통해 값을 얻어오기
	
	String username = (String) session.getAttribute("username"); // 이미 session에 저장되어 있는 값
	
	ArrayList<String> msgs = (ArrayList<String>) application.getAttribute("msgs"); // 메세지들을 담을 배열리스트 객체생성
	if (msgs == null) {
		msgs = new ArrayList<String>();
		application.setAttribute("msgs", msgs);
	}
	
	Date date = new Date();
	msgs.add(username + " :: " + msg + " , " + date.toLocaleString());
	
	application.log(msg + " 추가됨");
	
	response.sendRedirect("twitterList.jsp");
%>