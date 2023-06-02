package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchEmpServlet
 */
@WebServlet("/SearchEmpServlet")
public class SearchEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try {
			String userid = request.getParameter("id");
			String function =  request.getParameter("function");
		
			// planner id validation method
			boolean check = adminDbUtil.checkEmployee(userid);
			
			//planner information retrieve
			if(check == true) {
				
				//retrieving and set attributes
				ArrayList<Planner> plannerDetails = adminDbUtil.getPlannerDetails(userid);
				request.setAttribute("plannerDetails", plannerDetails);
				//for update
				if(function.equals("update")) {
					RequestDispatcher dis = request.getRequestDispatcher("plannerUpdate.jsp");
					dis.forward(request, response);
				}
				//for delete 
				else if(function.equals("delete")) {
					RequestDispatcher dis = request.getRequestDispatcher("plannerDelete.jsp");
					dis.forward(request, response);
				}
					
			}
			else {
				//for update fail
				if(function.equals("update")) {
					out.println("<script type ='text/javascript'>");
					out.println("alert('username is incorrect');");
					out.println("location = 'searchEmpupdate.jsp';");
					out.println("</script>");	
				}
				//for delete fail
				else if(function.equals("delete")) {
					out.println("<script type ='text/javascript'>");
					out.println("alert(' user name is incorrect');");
					out.println("location = 'searchEmpDelete.jsp';");
					out.println("</script>");	
				}
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	

	}
}
