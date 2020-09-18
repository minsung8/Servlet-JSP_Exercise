# Servlet-JSP_Exercise

HTTP (Hypertext Transfer Protocol)
- 서버와 클라이언트가 인터넷상에서 데이터를 주고받기 위한 프로토콜
  1) 요청 메서드 
  - GET : 정보 요청 => select
  - POST : 정보 입력 => insert
  - PUT : 정보 업데이트 => update
  - DELETE : 정보 삭제 => delete
  - HEAD : 헤더 정보만 요청
  - OPTION : 웹 서버가 지원하는 메서드 종류 요청
  - TRACE : 클라이언트 요청을 그대로 반환

  2) 장점
  - 불특정 다수를 대상으로 하는 서비스에 적합
  - 클라이언트와 서버가 계속 연결된 형태가 아니기 때문에 많은 요청과 응답 처리 가능

  3) 단점
  - 연결을 끊어버리기 때문에 클라이언트의 이전 사항 확인 불가 => 무상태(Stateless)
  - 이러한 특징때문에 정보 유지를 위해 Cookie와 같은 기술 등장


URL (Uniform Resource Locator)
- 인터넷 상의 자원의 위치
- 특정 웹 서버의 특정 파일에 접근하기 위한 경로 혹은 주소


Web Server
- 클라이언트가 요청하는 HTML이나 각종 resource 전달 (정적인 데이터 or 동적)
- Apache, Nginx 등이 있다.


WAS (Web Application Server)
- 일종의 미들웨어로 웹 클라이언트 요청 중 웹 어플리케이션이 동작하도록 지원하는 목적



Web Server  vs  WAS
- WAS도 자체적으로 웹서버 기능 내장
- 규모가 커질수록 자원 이요의 효율성 및 유지보수 용이를 위해 웹서버와 WAS 분리


ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

자바 웹 어플이케이션 (Java Web Application)
- WAS에 설치되어 동작하는 Application
- HTML, CSS, Image, 자바로 작성된 클래스, 각종 설정 파일 등을 포함 


Servlet 
- 자바 웹 어플리케이션의 구성요소 중 동적인 처리를 하는 프로그램 => WAS에 동작하는 Class
- 웹 페이지를 개발할 때 JSP와 Servlet을 조화롭게 사용 => HTML은 JSP, 복잡한 프로그래밍은 Servlet을 사용


LifecycleServlet
- HttpServlet의 3가지 메서드 오버라이딩 => init(), service(request, response), destroy()
- service => 클라이언트 요청이 GET => doGet 메서드 호출 
          => 클라이언트 요청이 POST => doPost 메서드 호출
- 생명주기
  1. WAS는 Servlet 요청을 받으면 해당 Servlet의 메모리가 있는지 확인 
  2. 없다면 해당 Servlet 클래스를 메모리에 할당 후 init 메서드 실행
  3. service 메서드 호출
  4. was가 종료되거나 새롭게 갱신될 경우 destroy 메서드 호출 후 처음부터 실행
  
  
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

JSP (Java Server Page)
- WAS는 웹 브라우저로부터 JSP 요청을 받게 되면 JSP코드를 Servlet 소스코드로 변환 후 컴파일하여 실행
- 실행순서
  1. 브라우저가 웹서버에 JSP에 대한 요청 정보를 전달한다.
  2. 브라우저가 요청한 JSP가 최초로 요청했을 경우만 JSP로 작성된 코드가 서블릿으로 코드로 변환한다. (java 파일 생성)
  3. 서블릿 코드를 컴파일해서 실행가능한 bytecode로 변환한다. (class 파일 생성)
  4. 서블릿 클래스를 로딩하고 인스턴스를 생성한다.
  5. 서블릿이 실행되어 요청을 처리하고 응답 정보를 생성한다.
  
  
JSP 문법
- 선언문 : 변수나 메서드 선언에 사용 =>  <%! 문장%>
- 스크립트릿 : 프로그램 로직을 구현 시 사용 =>  <% 문장%>
- 표현식 : JSP 페이지내에서 웹 페이지에 출력할 부분을 표현 =>  <%= 문장%>
- 주석 : JSP 페이지에서 사용가능한 주석 =>   <%-- JSP 주석입니다. --%>


JSP 내장 객체
- 개발자가 선언하지 않아도 사용가능한 미리 선언된 변수
- response, request, application, session, out 등이 있다.

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

Scope
- 변수를 어떤 범위내에서 사용할 것인가에 대한 정의
- 종류

  1. Application Scope : 웹 어플리케이션이 시작되고 종료될 때까지 변수 유지
    - 웹 어플리케이션이 시작되고 종료될 때까지 변수를 사용할 수 있다.
    - ServletContext 인터페이스를 구현한 객체를 사용한다.
    - jsp에서는 application 내장 객체를 이용한다.
    - 서블릿의 경우는 getServletContext()메소드를 이용하여 application객체를 이용한다.
    - 웹 어플리케이션 하나당 하나의 application객체가 사용된다.
    - 값을 저장할 때는 application객체의 setAttribute()메소드를 사용한다.
    - 값을 읽어 들일 때는 application객체의 getAttribute()메소드를 사용한다.
    - 모든 클라이언트가 공통으로 사용해야 할 값들이 있을 때 사용한다.
    
  2. Session Scope : 웹 브라우저별로 변수 유지
    - 웹 브라우저별로 변수를 관리하고자 할 경우 사용한다.
    - 웹 브라우저간의 탭 간에는 세션정보가 공유되기 때문에, 각각의 탭에서는 같은 세션정보를 사용할 수 있다.
    - HttpSession 인터페이스를 구현한 객체를 사용한다.
    - JSP에서는 session 내장 변수를 사용한다.
    - 서블릿에서는 HttpServletRequest의 getSession()메소드를 이용하여 session 객체를 얻는다.
    - 값을 저장할 때는 session 객체의 setAttribute()메소드를 사용한다.
    - 값을 읽어 들일 때는 session 객체의 getAttribute()메소드를 사용한다.
    - 장바구니처럼 사용자별로 유지가 되어야 할 정보가 있을 때 사용한다.
    
  3. Request Scope : Http 요청을 WAS가 받아 웹 브라우저에게 응답할때 까지 변수 유지
    - http 요청을 WAS가 받아서 웹 브라우저에게 응답할 때까지 변수값을 유지하고자 할 경우 사용한다.
    - HttpServletRequest 객체를 사용한다.
    - JSP에서는 request 내장 변수를 사용한다.
    - 서블릿에서는 HttpServletRequest 객체를 사용한다.
    - 값을 저장할 때는 request 객체의 setAttribute()메소드를 사용한다.
    - 값을 읽어 들일 때는 request 객체의 getAttribute()메소드를 사용한다.
    - forward 시 값을 유지하고자 사용한다.
    
  4. Page Scope : 페이지내에서 지역변수처럼 사용
    - PageContext 추상 클래스를 사용한다.
    - JSP 페이지에서 pageContext라는 내장 객체로 사용 가능 하다.
    - forward가 될 경우 해당 Page scope에 지정된 변수는 사용할 수 없다.
    - 사용방법은 Application scope나 Session scope, request scope와 같다.
    - 마치 지역변수처럼 사용된다는 것이 다른 Scope들과 차이점
    - jsp에서 pageScope에 값을 저장한 후 해당 값을 EL표기법 등에서 사용할 때 사용
    - 지역 변수처럼 해당 jsp나 서블릿이 실행되는 동안에만 정보를 유지하고자 할 때 사용
  
  
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

  
EL (Expression Language)
- 표현언어는 값을 표현하는데 사용되는 스크립트 언어로써 JSP의 기본문법을 보완하는 역할을 한다.
- 표현언어가 제공하는 기능 
    1. JSP의 스코프(scope)에 맞는 속성 사용
    2. 집합 객체에 대한 접근 방법 제공
    3. 수치 연산, 관계 연산, 논리 연산자 제공
    4. 자바 클래스 메소드 호출 기능 제공
    5. 표현언어만의 기본 객체 제공

JSTL (JSP Standard Tag Library)
- JSP 페이지에서 조건문, 반복문 처리등을 Html tag 형태로 작성할 수 있게 도와준다.
- 변수지원, 흐름제어, URL 처리, 기타 테그 기능 지원


------------------------------------------------------------------------------------------------------------


Web Server 의 종류
    -- Apache, IIS(Internet Information Server), WebtoB(티맥스소프트,국산) 
 
Web Containter 의 종류
    -- Tomcat, Jeus(티맥스소프트,국산), WebSphere(IBM), WebLogic(오라클사), JBoss(Redhat), Resin(Caucho) 

 ---------------------------------------------------------
 
 ===> C:\apache-tomcat-8.5.47\conf\server.xml 파일 수정하기 <====
 C:\apache-tomcat-8.5.47\conf\server.xml 파일에서
 --> 오라클이 사용하고 있는 웹포트번호 8080과 중복을 피하고자 port 번호를 8080 에서 9090 으로 변경하겠다.  
     form의 method 방식중 get방식으로 요청을 받을 경우 
         사용자가 입력한 값이 한글인 경우 한글이 깨지는 현상을 방지하기 위해 URIEncoding="UTF-8" 을 해주어야 한다. 

 <Connector port="9090" URIEncoding="UTF-8" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />

 <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" URIEncoding="UTF-8" />


===> C:\apache-tomcat-8.5.47\conf\context.xml 파일 수정하기 <====
 19번 라인의 <Context> 를 
 <Context reloadable="true" privileged="true"> 으로 수정한다.
 이것을 수정해주면 프로그램 개발시 Java Class 파일에 수정을 가하여 저장하는 순간 자동으로 톰캣서버에 Java Class 파일이
 리로드 되어지므로 톰캣서버를 재구동 할 필요가 없어지게 된다.
