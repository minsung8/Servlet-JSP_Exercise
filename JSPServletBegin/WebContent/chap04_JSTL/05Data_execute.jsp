<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% 
	String[] nameArr1 = {"일순신", "이순신", "삼순신", "사순신", "오순신"};
	request.setAttribute("nameArr1", nameArr1);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("05View_result.jsp");
	dispatcher.forward(request, response);
%>