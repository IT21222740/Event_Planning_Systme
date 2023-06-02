<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="java.util.ArrayList,com.admin.*" %>
<!doctype html>
<html lang="en">
 
<head>
<%  
// retrieve your list from the request, with casting 
ArrayList<Planner> list = (ArrayList<Planner>) request.getAttribute("plannerDetails");

	
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
<style>
label{
    width: 7%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
   box-sizing: content-box;

}
input[type=text], select {
  width: 30%;
  padding: 12px 20px;
  margin: 15px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  
  box-sizing: content-box;
}

input[type=submit]{
  width: 20%;
  background-color: #212529;
  color: white;
  padding: 14px 20px;
 margin-left :500px ;
  margin-top :8px ;
  margin-bottom  :8px ; 
  border: none;
  box-sizing: content-box;
  border-radius: 4px;
  cursor: pointer;
}
input[type=next]{
  width: 20%;
  background-color: #212529;
  color: white;
  padding: 14px 20px;
  margin-left :8px ;
  margin-top :8px ;
  margin-bottom  :8px ; 
  border: none;
  box-sizing: content-box;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover,input[type=next]:hover {
  background-color: #efeff6;
}

.form{
 margin :auto;
	width :80%;
  border-radius: 5px;
  background-color:  #fff;
  padding: 20px;
}
.title{
    
   margin-top: 50px;
   margin-bottom: 50px;
    
}
</style>
<body>
<%

String plannerId = "h";
String	plannerFirstName = "h" ;
String	plannerLastName = "h" ;
String	eventType =  "h";
String	address =  "h";
double	salary = 1000 ;
int	age =  12;
String	gender =  "h";
String	phoneNumber = "h" ;


for(Planner planner: list){
	plannerId = planner.getPlannerId(); 
	plannerFirstName = planner.getPlannerFirstName() ;
	plannerLastName = planner.getPlannerLastName();
	eventType =  planner.getEventType();
	address =  planner.getAddress();
	salary = planner.getSalary() ;
	age =  planner.getAge();
	gender =  planner.getGender();
	phoneNumber = planner.getPhoneNumber() ;

}

%>

	
%>
<div class = "title">
    <h3 style =" text-align: center;font-size: 2.5em;">Planner <% out.println(plannerId); %></h3>

</div>
   


<div class ="form">
  <form action="delete" method = "post">
  
    <label for="fname">First Name</label>
    <input type="text" value ="<%=plannerFirstName%>" id="fname" name="firstname" readonly="readonly">
    <label for="lname">Last Name</label>
    <input type="text" value ="<%=plannerLastName%>" id="lname" name="lastname" readonly="readonly">
     
    <label for="type">Event</label>
    <input type="text" value ="<%=eventType%>" id="lname" name="lastname" readonly="readonly">
   
    
     <label for="Gender">Gender</label>
     <input type="text" value ="<%=gender%>" id="lname" name="lastname" readonly="readonly">
    
    <label for="phoneNum">phonenumber</label>
    <input type="text" value="<%=phoneNumber%>" id="phoneNum" name="phoneNum" readonly="readonly">
    <label for="lname">salary</label>
    <input type="text" value="<%=salary%>" id="salary" name="salary" readonly="readonly">
  	
  	<label for ="Address">Address</label>
    <input type ="text" id="Address" value="<%=address%>" name="Address" readonly="readonly">
    <label for ="age">Age</label>
    <input type ="text" id="age" value="<%=age%>" name="age" readonly="readonly">
  	 <input type="hidden" id="custId" name="id" value="<%=plannerId%>">
  	<a href="admin.jsp">
  	<input style = "text-align : center "  value = "back" type="next">
  	</a>
  	
    <input  type="submit" value="Delete">
   	
   	 
  </form>
  
</div>

<body>
	
    <!-- ============================================================== -->
      
</body>
 
</html>