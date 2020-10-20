package chap03;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registerPerson.do")
public class RegisterPerson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String method = request.getMethod();
		
		if ("PoST".equalsIgnoreCase(method)) {
			String name = request.getParameter("name");
			String school = request.getParameter("school");
			String color = request.getParameter("color");
			
			String[] arrFood = request.getParameterValues("food");
			String Foodes = String.join(",", arrFood);
			
			Map<String, String> paraMap = new HashMap<>();
			paraMap.put("name", name);
			paraMap.put("school", school);
			paraMap.put("color", color);
			paraMap.put("Foodes", Foodes);
			
			request.setAttribute("paraMap", paraMap);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/chap03_standardAction/04forwardRegisterView.jsp");
			dispatcher.forward(request, response);
			
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/error/error.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
 