<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
  <%@page import="java.util.ArrayList,com.admin.*" %>
<!doctype html>
<html lang="en">
 
<head>
<%  
// retrieve your list from the request, with casting 

ArrayList<Events> list = (ArrayList<Events>)session.getAttribute("eventdetails");
ArrayList<ViewAdmin>  view = (ArrayList<ViewAdmin>)session.getAttribute("view");
String id = (String)session.getAttribute("AdmindId");


%>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="flag-icon.min.css">
    <title>PLANIZER</title>
</head>

<body>
	
	
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.html">PLANIZER</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <a class="navbar-brand" >
                        	<% out.println(id);%>
						</a>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                        	<li >
                                <H1><% out.println(id);%></H1>
                            </li>
                            <li class="nav-divider">
                                Menu
                            </li>
                            
                            <li class="nav-divider">
                                <a class="nav-link" href="admin.jsp">Dashboard</a>

                            </li>
                                                       
                            <li class="nav-divider">
                                <a class="nav-link" href="newEmployee.jsp">New Planner</a>
                            </li> 
                             <li class="nav-divider">
                                <a class="nav-link" href= "searchEmpupdate.jsp">Update Planner</a>
                            </li> 
                            
                            <li class="nav-divider">
                                <a class="nav-link" href="searchEmpDelete.jsp">Delete Planner</a>
                            </li>
							
							 <li class="nav-divider">
                                <a class="nav-link" href="login.jsp">Log Out</a>
                            </li> 
                            
                            
                           
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
       </div>
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h1  class="pageheader-title">Admin dash-board </h1>
                                <p class="pageheader-text">Nulla euismod urna eros, sit amet scelerisque torton lectus vel mauris facilisis faucibus at enim quis massa lobortis rutrum.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">E-Commerce Dashboard Template</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">
						<%
	
		
	
								
						
						
						
						
		
%>
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">NO. Of Customers</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1"><%for(ViewAdmin view1: view){int noOfCustomers = view1.getNoOfCustomers();out.println(noOfCustomers);}%></h1>
                                        </div>
                                        
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">No. Of Planners</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1"><%for(ViewAdmin view1: view){int noOfPlanners = view1.getNoOfPlanners();out.println(noOfPlanners);}%></h1>
                                        </div>
                                       
                                    </div>
                                 
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">No. Of Admins</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1"><%for(ViewAdmin view1: view){int noOfAdmins = view1.getNoOfUsers();out.println(noOfAdmins);} %></h1>
                                        </div>
                                        
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="text-muted">NO. of noOfevents</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1"><%for(ViewAdmin view1: view){int noOfevents = view1.getNoOfevents();out.println(noOfevents);}%></h1>
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                   
                
              </div>
           </div>
                            <!-- ============================================================== -->
                      
                            <!-- ============================================================== -->

                                          <!-- recent orders  -->
                            <!-- ============================================================== -->
                            <div style = "margin-top:-50px"class="col-xl-12 col-lg-12 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">Recent Orders</h5>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0">Event ID</th>
                                                        <th class="border-0">Planner ID</th>
                                                        <th class="border-0">Event Type </th>
                                                        <th class="border-0">Event Date </th>
                                                        <th class="border-0">Venue Location</th>
                                                        <th class="border-0">Venue Email</th>
                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                   
                                                    <%
													for(Events event: list){
														
														out.println("<tr>");
														int eventId = event.getEventId();
														out.println( "<td>"+eventId+"</td>");
														String plannerId = event.getPlannerId();
														out.println( "<td>"+plannerId+"</td>");
														String eventType = event.getEventType();
														out.println( "<td>"+eventType+"</td>");
														String eventDate = event.getEventDate();
														out.println( "<td>"+eventDate+"</td>");
														String venueLocation = event.getVenueLocation();
														out.println( "<td>"+venueLocation+"</td>");
														String venueEmail = event.getVenueEmail();
														out.println( "<td>"+venueEmail+"</td>");
														out.println("</tr>");
		
														}
	
													%>
                                                    
                                                    
                                                 </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end recent orders  -->

    
                            <div class="ecommerce-widget">

                                   <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    
</body>
 
</html>