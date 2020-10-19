package chap02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getpostMethod_5.do")
public class GetPostMethod_5 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());		// 웹 브라우저상에 기술할 수 있는 객체
		
		// request.setCharacterEncoding("UTF-8");
		String method = request.getMethod();
		String name = request.getParameter("name");
		String school = request.getParameter("school");
		String color = request.getParameter("color");
		
		if (color == null) {
			color = "없음";
		}
		
		String[] foodArr = request.getParameterValues("food");
		
		// 웹 브라우저 출력
		// HttpServletResponse response 객체는 넘어온 데이터를 조작해서 결과물을 나타내고자 할때 쓰인다.
		response.setContentType("text/html; charset=UTF-8");
	      
	    PrintWriter out = response.getWriter();
	      // out 은 웹브라우저에 기술하는 대상체라고 생각하자.
	      
	    out.println("<html>");
	    out.println("<head><title>개인 성향 테스트 결과화면</title></head>");
	    out.println("<body>");
	    out.println("<h2>개인 성향 테스트 결과("+method+")</h2>");
	    out.printf("<span style='color: purple; font-weight: bold;'>%s</span>님의 개인 성향은<br/><br/>", name);
	      
	    out.printf("학력은 %s이며, %s색을 좋아합니다<br/><br/>", school, color);
	      
	    String foods = String.join(",", foodArr);
	      
	    out.println("좋아하는 음식은 " + foods + " 입니다");
	    out.println("</body>");
	    out.println("</html>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
