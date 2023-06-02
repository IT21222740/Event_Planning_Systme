package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Customerinsert
 */
@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String streetAddress = request.getParameter("Saddress");
		String district = request.getParameter("district");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("pcode");
		String personalPhone = request.getParameter("Pphone");
		String WorkPhone = request.getParameter("Wphone");
		String Email = request.getParameter("email");
		String HeardAboutUs = request.getParameter("hau");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = customerDButil.insertcustomer(userName, firstName, lastName, streetAddress, district, city, postalCode, personalPhone, WorkPhone, Email, HeardAboutUs, userName, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
