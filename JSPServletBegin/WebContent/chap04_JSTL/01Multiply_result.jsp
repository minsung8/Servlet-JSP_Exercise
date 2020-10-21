<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<c:set var="no1" value="${ param.num1 }"/>
<c:set var="no2" value="${ param.num2 }"/>
<c:set var="result" value="${ no1 * no2 }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두 개의 수를 입력받아서 곱셈</title>

<script type="text/javascript" src="/JSPServletBegin/WebContent/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	
</script>

</head>
<body>
	
	${ no1 } 와 ${ no2 }의 곱은 ${ result } 이다

	
</body>
</html>