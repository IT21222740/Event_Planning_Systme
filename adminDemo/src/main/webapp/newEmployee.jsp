<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!doctype html>
<html lang="en">
 
<head>
	
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
<div class = "title">
    <h3 style =" text-align: center;font-size: 2.5em;">NEW EMPLOYEE</h3>

</div>
   


<div class ="form">
  <form name="RegForm" action="insert" method = "post">
  
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="planner's name.." required maxlength ="20">
    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="planner's last name.." required maxlength ="30">
      
	<label for="plannerId">Planner id</label>
    <input type="text" id="plannerId" name="plannerId" placeholder="starts with 'p' ex: p001" required maxlength ="15">
    <label for="lname">Password</label>
    <input type="text" id="password" name="password" placeholder="planner's password.." required>
	

    
    <label for="type">Event</label>
    <select id="event" name="event" required>
     <option value="none" selected disabled hidden>Select an Option</option>
      <option value="Wedding">Wedding</option>
      <option value="scfunc">School functions</option>
      <option value="bParty">Birthday Party</option>
    </select>
    
     <label for="Gender">Gender</label>
    <select id="gender" name="gender" required>
    <option value="none"  selected disabled  value = "" hidden>Select an Option</option>
      <option value="F">Female</option>
      <option value="M">Male</option>
    </select>
    
    <label for="phoneNum">phonenumber</label>
    <input type="text" id="phoneNum" name="phoneNum" placeholder="10 digits only" required maxlength="10" minlength = "10">
    <label for="lname">salary</label>
    <input type="text" id="salary" name="salary" placeholder="salary should more than 0" required>
  	
  	<label for ="Address">Address</label>
    <input type ="text" id="Address" name="Address" placeholder="planner's Address" maxlength ="45" required>
    <label for ="age">Age</label>
    <input type ="text" id="age" name="age" placeholder="planner age should be 18 or higher " required>
  	
  	<a href="admin.jsp">
  	<input style = "text-align : center "  value = "back" type="next">
  	</a>
  	
    <a href="admin.jsp"></a><input  type="submit" value="Submit">
   	
   	 
  </form>
  
</div>


    <!-- ============================================================== -->
      
</body>
 
</html>