<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList,com.admin.*" %>
<!DOCTYPE html>
<html>
<head>
<%  
// retrieve your list from the request, with casting 
ArrayList<Events> list = (ArrayList<Events>) request.getAttribute("eventAdder");

// print the information about every category of the list
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>I am a Admin</h1>
<%=list.size() %>
</body>
</html>