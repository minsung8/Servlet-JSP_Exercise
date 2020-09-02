<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	pageContext.setAttribute("p1", "page scope value");
	request.setAttribute("r1", "request scope value");
	session.setAttribute("s1", "session scope value");
	application.setAttribute("a1", "application scope value");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${pageScope.p1} <br>
	${requestScope.r1} <br>
	${sessionScope.s1} <br>
	${applicationScope.a1} <br>
	
	${p1} <br>
</body>
</html>