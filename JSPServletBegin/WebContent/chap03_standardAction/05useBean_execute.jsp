<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap03.MemberDTO" %>
    
<%	
	/*
	MemberDTO dto1 = new MemberDTO();

	dto1.setName("일순신");
	dto1.setJubun("9403221081727");
	dto1.setGender("9403221081727");
	dto1.setAge("9403221081727");
	
	String name1 = dto1.getName();
	String jubun1 = dto1.getJubun();
	String gender1 = dto1.getGender();
	int age1 = dto1.getAge();
	
	
	MemberDTO dto2 = new MemberDTO("이순신", "0203224081727");
	dto2.setGender("0203224081727");
	dto2.setAge("0203224081727");
	String name2 = dto2.getName();
	String jubun2 = dto2.getJubun();
	String gender2 = dto2.getGender();
	int age2 = dto2.getAge();
	*/
	
%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	<div>
		<h2>객체정보 불러오기</h2>
		<ul>
			<li>성명 : <%= name1 %></li>
			<li>주민번호 : <%= jubun1 %></li>
			<li>성별 : <%= gender1 %></li>
			<li>나이 : <%= age1 %></li>
			<br/>
			<li>성명 : <%= name2 %></li>
			<li>주민번호 : <%= jubun2 %></li>
			<li>성별 : <%= gender2 %></li>
			<li>나이 : <%= age2 %></li>
		</ul>
	</div>
	 --%>
	
	<div>
		<h2>useBean 사용하여 불러오기</h2>
		<jsp:useBean id="dto3" class="chap03.MemberDTO"/>
		<jsp:setProperty property="name" name="dto3" value="엄정화"/>
		<jsp:setProperty property="jubun" name="dto3" value="9010202234567"/>
		<ul>
			<li>성명 : <jsp:getProperty property="name" name="dto3"/></li>
			<li>주민번호 : <jsp:getProperty property="jubun" name="dto3"/></li>
			<li>성별 : <jsp:getProperty property="gender" name="dto3"/></li>
			<li>나이 :<jsp:getProperty property="age" name="dto3"/></li>
			
		</ul>
	</div>
</body>
</html>