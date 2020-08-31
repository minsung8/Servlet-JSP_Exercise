<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    StringBuffer url = request.getRequestURL();			// request, out은 내장객체이므로 따로 선언 불필요

    out.println("url : " + url.toString());
    out.println("<br>");
%>
</body>
</html>