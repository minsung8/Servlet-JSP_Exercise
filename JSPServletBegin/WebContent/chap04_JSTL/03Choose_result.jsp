<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="jubun" value="${ param.jubun }"></c:set>
	주민번호 : ${ jubun } <br>
	길이 : ${ fn:length(jubun) }  <br>
	성별 식별 숫자 : ${ fn:substring(jubun, 6, 7) } <br>
	<c:set var="genderno" value="${ fn:substring(jubun, 6, 7) }"></c:set>
	
	<c:if test="${ fn:length(jubun) == 0}">
		<span>주민번호를 입력하지 않으셨습니다!<br></span>
	</c:if>
	
	<c:if test="${ fn:length(jubun) == 13 }">
		<c:choose>
		
			<c:when test="${ genderno == '1' ||  genderno == '3'}">
				남자입니다.
			</c:when>
			
			<c:otherwise>
				여자입니다.
			</c:otherwise>
			
		</c:choose>
		
	</c:if>
	
	<c:if test="${ fn:length(jubun) != 13 }">
		주민번호 길이가 맞지 않습니다.
	</c:if>
</body>
</html>