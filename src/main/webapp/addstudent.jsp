<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="com.DAO.StudentDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
	<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input[type="number"], input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            border: none;
            background: #007bff;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }
    </style>

</head>
<body>
		<div class="container">
			<h1>Add Student</h1>
			<form action="addstudent" method="get">
				<label>Id</label>
				<input type="number" name="id"><br><br>
				<label>Name</label>
				<input type="text" name="name"><br><br>
				<label>Physics</label>
				<input type="number" name="physics"><br><br>
				<label>Chemistry</label>
				<input type="number" name="chemistry"><br><br>
				<label>Maths</label>
				<input type="number" name="maths"><br><br>
				<input type="submit"> 
			</form>
		</div>
	<script type="text/javascript">
		<%String mess=(String)request.getAttribute("msg"); %>
		<% if(mess!=null){ %>
			alert("<%=mess %>");
			window.location.href="adminhome.jsp";
		<%} %>
	</script>
</body>
</html>