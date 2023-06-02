package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PlannerInsertServlet")
public class PlannerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//js type
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//taking post parameters
		String fname = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String id = request.getParameter("plannerId");
		String password = request.getParameter("password");
		String type = request.getParameter("event");
		String gender = request.getParameter("gender");
		double salary = Double.parseDouble(request.getParameter("salary"));
		String phoneNumber = request.getParameter("phoneNum");
		String address =  request.getParameter("Address");
		int age = Integer.parseInt(request.getParameter("age"));
		
		try {
			//checking 
			boolean check = adminDbUtil.insertPlanner(fname, lastName, id, password, type, gender, salary, phoneNumber, address, age);
			//updating session
			ArrayList<ViewAdmin> view = adminDbUtil.view();
			HttpSession session = request.getSession();
			session.setAttribute("view",view);
			//succsess
			if(check == true) {
				out.println("<script type ='text/javascript'>");
				out.println("alert('New employee added to the data base');");
				out.println("location = 'newEmployee.jsp';");
				out.println("</script>");
			}
			//failed
			else {
				out.println("<script type ='text/javascript'>");
				out.println("alert('oops something wrog!!!');");
				out.println("location = 'newEmployee.jsp';");
				out.println("</script>");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
