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
import javax.servlet.http.HttpSession;




@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//js writere
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//get user name and password
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		
		
		try{
			//vlaidate user name and password
			if(UserDbutil.validate(username, password)) {
				//user details arraylist
				ArrayList<User> user = UserDbutil.getUserDetails(username);
				
				//redirect according to user type
				for(User u : user) {
					String Type = u.getType();
					
					//redirect to admin
					if(Type.equals("A")) {
						
						ArrayList<Events> eventlist = adminDbUtil.getEvents();
						ArrayList<ViewAdmin> view = adminDbUtil.view();
						
						//session variable
						HttpSession session = request.getSession();
						session.setAttribute("eventdetails",eventlist);
						session.setAttribute("view",view);
						session.setAttribute("AdmindId",u.getUserName());

						
						RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
						dis.forward(request, response);	
					}
					//redirect to customoer
					else if(Type.equals("C")) {
						RequestDispatcher dis = request.getRequestDispatcher("customer.jsp");
						
						dis.forward(request, response);	
					}
					
					//redirect to planner
					else if(Type.equals("P")) {
						RequestDispatcher dis = request.getRequestDispatcher("planner.jsp");
						dis.forward(request, response);	
					}
				}
				
			}
			else{
				//validation failed
				out.println("<script type ='text/javascript'>");
				out.println("alert('Your user name or password is incorrect');");
				out.println("location = 'login.jsp';");
				out.println("</script>");
			}
				
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

		
}

