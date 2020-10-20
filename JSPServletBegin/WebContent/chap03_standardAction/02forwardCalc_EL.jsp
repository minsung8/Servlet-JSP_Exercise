<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	int firstNum = Integer.parseInt(request.getParameter("firstNum"));
	int secondNum =  Integer.parseInt(request.getParameter("secondNum"));
	int sum = 0;
	
	for (int i=firstNum; i<=secondNum; i++){
		sum += i;
	}
	
	request.setAttribute("sum", sum);
	request.setAttribute("firstNum", firstNum);
	request.setAttribute("secondNum", secondNum);
	
	/*
    == request 내장객체는 클라이언트(02forwardCalcTest.jsp) 가 
            보내온 데이터를 읽어들이는( request.getParameter("변수명"); ) 역할도 있고 
            저장소 기능( request.setAttribute("키", 저장할객체); )을 하는 역할도 있다. 
 */
 
// request.setAttribute("sum", new Integer(sum));
//원래는 위처럼 객체로 만들어서 저장을 해야 하지만 자바가 알아서 auto boxing(자동적으로 객체로 만들어주는 것) 해주기 때문에 아래처럼 쓸 수 있다.
	
%>

<jsp:forward page="02forwardCalcView_EL.jsp"/>
