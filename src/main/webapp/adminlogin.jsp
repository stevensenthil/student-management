<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
</head>
<body>
    <h3>Adminlogin Page</h3>
	<form action="login" method="get">
		<label>Gmail</label>
		<input type="text" name="email"><br><br>
		<label>Password</label>
		<input type="password" name="password"><br><br>
		<input type="submit" ><br><br>
		<span>Not a User?</span>
		<a href="adminsignup.jsp">SignUp</a>
	</form>
	<% String mess=(String)request.getAttribute("msg"); %>
	<% if(mess!=null){ %>
	<%= mess %>
	<%} %>
</body>
</html>