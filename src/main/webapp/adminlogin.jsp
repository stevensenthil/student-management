<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
<style>
	body {
            font-family: Arial, sans-serif;
            background-color: #000000cc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;           
        }
        #container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            font-size: 20px;
            
        }
        h1 {
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            text-align: left;
            font-weight: bold;
        }
        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .signup {
            margin-top: 10px;
        }
        .signup a {
            color: #007BFF;
            text-decoration: none;
        }
        .signup a:hover {
            text-decoration: underline;
        }
</style>
</head>
<body>
    
    <div id="container">
    	<h1>Admin Login</h1>
		<form action="login" method="get">
			<label>Gmail</label>
			<input type="text" name="email" required><br><br>
			<label>Password</label>
			<input type="password" name="password" required><br><br>
			<input type="submit" ><br><br>
		</form>
		<% String mess=(String)request.getAttribute("msg"); %>
		<% if(mess!=null){ %>
		<p style="color: red; font-weight: bold;"><%= mess %></p>
		<%} %>
		  <div class="signup">
            <span>Not a User?</span>
            <a href="adminsignup.jsp">Sign Up</a>
        </div>
	</div>
	
</body>
</html>