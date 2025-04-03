<%@page import="com.DTO.Studentdata"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
</head>
<body>
	<h1>Student Login</h1>
		<form action="studentlogin" method="get">
			<label>Id</label>
			<input type="number" name="id" required><br><br>
			<input type="submit" value="View Result" >
		</form>
		<script>
		<%
			String msg=(String)request.getAttribute("msg");
			Studentdata s=(Studentdata)request.getAttribute("student");
		%>
		</script>
</body>
</html>