<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<table>
	<c:forEach var = "cus" items="${user}">
	 
	<c:set var="uid" value="${cus.userName}"/>
	<c:set var="fname" value="${cus.firstName}"/>
	<c:set var="lname" value="${cus.lastName}"/>
	<c:set var="streetaddress" value="${cus.streetAddress}"/>
	<c:set var="district" value="${cus.district}"/>
	<c:set var="city" value="${cus.city}"/>
	<c:set var="postalcode" value="${cus.postalCode}"/>
	<c:set var="phonepersonal" value="${cus.phonePersonal}"/>
	<c:set var="phonework" value="${cus.phoneWork}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="heardaboutus" value="${cus.heardAboutUs}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<tr>
		<td>User Name</td>
		<td>{cus.userName}</td>
	</tr>
	
	<tr>
		<td>First Name</td>
		<td>${cus.firstName}</td>
	</tr>
	
	<tr>
		<td>Last Name</td>
		<td>${cus.lastName}</td>
	</tr>
	
	<tr>
		<td>Street Address</td>
		<td>${cus.streetAddress}</td>
	</tr>
	
	<tr>
		<td>District</td>
		<td>${cus.district}</td>
	</tr>
	
	<tr>
		<td>city</td>
		<td>${cus.city}</td>
	</tr>
	
	<tr>
		<td>postalCode</td>
		<td>${cus.postalCode}</td>
	</tr>
	
	<tr>
		<td>phonePersonal</td>
		<td>${cus.phonePersonal}</td>
	</tr>
	
	
	<tr>
		<td>phoneWork</td>
		<td>${cus.phoneWork}</td>
	</tr>
	
	<tr>
		<td>email</td>
		<td>${cus.email}</td>
	</tr>
	
	<tr>
		<td>HeardAboutUs</td>
		<td>${cus.heardAboutUs}</td>
	</tr>
	
	<tr>
		<td>Password</td>
		<td>${cus.password}</td>
	</tr>
	

	
	</c:forEach>
	</table>
	
	<c:url value="updateCustomer.jsp" var="cusupdate">
		<c:param name="uname" value="${userName}"/>
		<c:param name="fname" value="${firstName}"/>
		<c:param name="lname" value="${lastName}"/>
		<c:param name="streetAddress" value="${streetAddress}"/>
		<c:param name="district" value="${district}"/>
		<c:param name="city" value="${city}"/>
		<c:param name="postalCode" value="${postalCode}"/>
		<c:param name="phonePersonal" value="${phonePersonal}"/>
		<c:param name="phoneWork" value="${phoneWork}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="hau" value="${heardAboutUs}"/>
		<c:param name="pass" value="${password}"/>
	
	
	</c:url>
	
	<a href="${cusupdate}">
	<input type= "button" name = "update" value="Update my Data">
	</a>
</body>
</html>