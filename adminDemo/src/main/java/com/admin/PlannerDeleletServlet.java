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

/**
 * Servlet implementation class PlannerDeleletServlet
 */
@WebServlet("/PlannerDeleletServlet")
public class PlannerDeleletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//type for js writer
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//taking post parameters
		String id = request.getParameter("id");
		
		try {
			//validating delete
			boolean check = adminDbUtil.delete(id);
			if(check == true) {
				//updating session
				ArrayList<ViewAdmin> view = adminDbUtil.view();
				HttpSession session = request.getSession();
				session.setAttribute("view",view);
				//success part
				out.println("<script type ='text/javascript'>");
				out.println("alert('Planner deleted Successfully');");
				out.println("location = 'admin.jsp';");
				out.println("</script>");
			}
			else {
				//validation failed part
				out.println("<script type ='text/javascript'>");
				out.println("alert('ooops someting happen');");
				out.println("location = 'admin.jsp';");
				out.println("</script>");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
