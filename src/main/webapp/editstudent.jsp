<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
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

        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
    
</head>

<body>

<%
    
    String idStr = request.getParameter("id");
    String name = request.getParameter("name");
    String phyStr = request.getParameter("physics");
    String chemStr = request.getParameter("chemistry");
    String mathsStr = request.getParameter("maths");

    int id = (idStr != null && !idStr.isEmpty()) ? Integer.parseInt(idStr) : 0;
    int phy = (phyStr != null && !phyStr.isEmpty()) ? Integer.parseInt(phyStr) : 0;
    int chem = (chemStr != null && !chemStr.isEmpty()) ? Integer.parseInt(chemStr) : 0;
    int maths = (mathsStr != null && !mathsStr.isEmpty()) ? Integer.parseInt(mathsStr) : 0;
%>
<div class="container">
		<h1>Edit Student</h1>
		<form action="editstudent" method="post">
		    <label>Id</label>
		    <input type="number" name="id" value="<%= id %>" required><br><br>
		
		    <label>Name</label>
		    <input type="text" name="name" value="<%= (name != null) ? name : "" %>" required><br><br>
		
		    <label>Physics</label>
		    <input type="number" name="physics" value="<%= phy %>" required><br><br>
		
		    <label>Chemistry</label>
		    <input type="number" name="chemistry" value="<%= chem %>" required><br><br>
		
		    <label>Maths</label>
		    <input type="number" name="maths" value="<%= maths %>" required><br><br>
		
		    <input type="submit" value="Update Student"> 
		</form>
</div>
<% 

    String message = (String) request.getAttribute("success");
    if (message != null) { 
%>
<script type="text/javascript">
    alert("<%= message.equals("1") ? "Student data updated successfully!" : "Failed to update student data!" %>");
    window.location.href = "adminhome.jsp";
</script>
<% } %>

</body>
</html>
