<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  

<%
	Map paraMap = (HashMap) request.getAttribute("paraMap");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>개인 성향 테스트 결과</h2>
	<span style='color: blue; font-weight: bold;'><%=paraMap.get("name") %></span>님의 개인 성향은<br/><br/>
	학력은 <%=paraMap.get("school") %> 이며, <%=paraMap.get("color") %>색을 좋아합니다.<br/>
	좋아하는 음식은 <%=paraMap.get("Foodes") %>입니다.
	
	<hr style="border :solid 1px red;">
	
	<span style='color: blue; font-weight: bold;'>${paraMap.name}</span>님의 개인 성향은<br/><br/>
	학력은 ${paraMap.school}이며, ${paraMap.color}색을 좋아합니다.<br/>
	좋아하는 음식은 ${paraMap.Foodes}입니다.
</body>
</html>