<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 컨텍스트명(context name)을 알아오고자 한다.
    String ctxPath = request.getContextPath();

 // System.out.println("ctxPath => " + ctxPath);
                     // ctxPath => /JSPServletBegin
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두 개의 수를 입력받아서 곱셈</title>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		
		$("form[name=myFrm]").submit(function() {
			
			var firstVal = $("input:text[name=first]").val().trim();
			var secondVal = $("input:text[name=second]").val().trim();
			
			
			if (firstVal == "" ||secondVal == "") {
				alert("문자를 입력하세요");
				return false;
			}

			
		});
		
	});
	
</script>

</head>
<body>
	
	<form name="myFrm" action="02If_result.jsp" method="get">
		첫번째 입력란 : <input type="text" name="first"/>
		두번째 입력란 : <input type="text" name="second"/>
		세번째 입력란 : <input type="text" name="third"/>
		<br>
		<input type="submit" value="확인"/>
		<input type="reset" value="취소"/>
	</form>
	
</body>
</html>