package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PlannerUpdateServlet")
public class PlannerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//type js
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//taking parametere
		String fname = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		
		String id = request.getParameter("id");
		String type = request.getParameter("event");
		String gender = request.getParameter("gender");
		double salary = Double.parseDouble(request.getParameter("salary"));
		String phoneNumber = request.getParameter("phoneNum");
		String address =  request.getParameter("Address");
		int age = Integer.parseInt(request.getParameter("age"));
		
		
		try {
				//checking
				boolean check = adminDbUtil.update(fname, lastName, id, type, gender, salary, phoneNumber, address, age);
				//succcss
				if(check == true) {
					out.println("<script type ='text/javascript'>");
					out.println("alert('Planner Updated Successfully');");
					out.println("location = 'admin.jsp';");
					out.println("</script>");
			}
				//fail
				else {
					out.println("<script type ='text/javascript'>");
					out.println("alert('oops something wrog!!!');");
					out.println("location = 'admin.jsp';");
					out.println("</script>");
				}
		
			}catch(Exception e) {
				e.printStackTrace();
			}
		



	}

}
