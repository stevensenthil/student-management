<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Signup Page</title>
<style>
body {
            font-family: Arial, sans-serif;
            background-color: #000000cc;
            display: flex;
            justify-content: center;
            align-items: center;
           
            margin: 0;           
        }
	#adsignup {
    width: 350px;
    margin: 50px auto;
    padding: 20px;
    background: #f4f4f4;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    text-align: center;
}

#adsignup h2 {
    margin-bottom: 20px;
    color: #333;
}

#adsignup form {
    display: flex;
    flex-direction: column;
}

#adsignup label {
    text-align: left;
    font-weight: bold;
    margin-bottom: 5px;
    color: #555;
}

#adsignup input {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

#adsignup input[type="submit"] {
    background: #007bff;
    color: white;
    font-size: 16px;
    border: none;
    cursor: pointer;
    transition: background 0.3s ease;
}

#adsignup input[type="submit"]:hover {
    background: #0056b3;
}
	
</style>
</head>
<body>
	
	<div id="adsignup">
		<h2>Admin Signup </h2>
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
		<% 
	    String errorMsg = (String) request.getAttribute("errorMsg"); 
		%>
		<% if(errorMsg!=null){ %>
		<p style="color: red; font-weight: bold;"><%= errorMsg %></p>
		<%} %>
	</div>
	
</body>
</html>