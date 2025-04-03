<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<style >
	#all{
	background-color: #000000cc;
	}
	#home{
		border: 1px solid black;
		background-color: blue;
		text-align: center;
		width: 25%;
		position: relative;
		left: 520px;
		top: 220px;
		padding: 10px;
		border-radius: 10px;
	}
	a{	
		text-decoration: none;
		font-size: 25px;
		color: white;	
		font-weight: bold;	
		font-style: italic;
		
	}
</style>
</head>
<body id="all">
	<div id="home">
		<a href="adminlogin.jsp" class="add">Admin</a><br><br>
		<a href="studentlogin.jsp" class="add">Student</a>
	</div>
</body>
</html>