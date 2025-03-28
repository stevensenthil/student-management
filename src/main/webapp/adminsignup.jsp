<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Signup Page</title>
</head>
<body>
	<h2>Admin Signup Page</h2>
	<form action="signup" method="get">
		<label>Id</label>
		<input type="number" name="id" required><br><br>
		<label>Name</label>
		<input type="text" name="name" required><br><br>
		<label>Contact</label>
		<input type="number" name="contact" required><br><br>
		<label>Email</label>
		<input type="text" name="email" required><br><br>
		<label>Password</label>
		<input type="password" name="pass"  required><br><br>
		<label>Confirm Password</label>
		<input type="password" name="repass" required><br><br>
		<input type="submit" >		
	</form>
		<% String mess=(String)request.getAttribute("msg"); %>
		<% if(mess!=null){ %>
		<%= mess %>
		<%} %>
</body>
</html>