<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	int a = (Integer) request.getAttribute("sum");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산된 결과값 보여주는 곳</title>
</head>
<body>
	<%= a %>
</body>
</html>