<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<String> list = new ArrayList<String>();
	list.add("hello");
	list.add("world");
	list.add("!!!");
	
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${list }" var="item" begin="1" end="2">
		${item }<br>
	</c:forEach>
</body>
</html>