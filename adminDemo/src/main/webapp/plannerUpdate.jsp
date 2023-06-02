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

// print the information about every category of the list

	
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

<div class = "title">
    <h3 style =" text-align: center;font-size: 2.5em;">Planner : <% out.println(plannerId); %></h3>

</div>
   


<div class ="form">
  <form action="update" method = "post">
  
    <label for="fname">First Name</label>
    <input type="text" value ="<%=plannerFirstName%>" id="fname" name="firstname" placeholder="planner's name..">
    <label for="lname">Last Name</label>
    <input type="text" value ="<%=plannerLastName%>" id="lname" name="lastname" placeholder="planner's last name..">
     
    <label for="type">Event</label>
    <select id="event" name="event">
    <option value="<%=eventType%>" hidden><%=eventType%></option>
      <option value="Wedding">Wedding</option>
      <option value="scfunction">School functions</option>
      <option value="bParty">Birthday Party</option>
    </select>
    
     <label for="Gender">Gender</label>
    <select id="gender" name="gender">
      <option value="<%=gender%>" hidden><%=gender%></option>
      <option value="F">Female</option>
      <option value="M">Male</option>
    </select>
    
    <label for="phoneNum">phonenumber</label>
    <input type="text" value="<%=phoneNumber%>" id="phoneNum" name="phoneNum" placeholder="10 digits only">
    <label for="lname">salary</label>
    <input type="text" value="<%=salary%>" id="salary" name="salary" placeholder="salary should more than 0">
  	
  	<label for ="Address">Address</label>
    <input type ="text" id="Address" value="<%=address%>" name="Address" placeholder="planner's Address">
    <label for ="age">Age</label>
    <input type ="text" id="age" value="<%=age%>" name="age" placeholder="planner age should be 18 or higher ">
  	 <input type="hidden" id="custId" name="id" value="<%=plannerId%>">
  	<a href="admin.jsp">
  	<input style = "text-align : center "  value = "back" type="next">
  	</a>
  	
    <input  type="submit" value="update">
   	
   	 
  </form>
  
</div>

<body>
	
    <!-- ============================================================== -->
      
</body>
 
</html>