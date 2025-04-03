<%@page import="com.DTO.Studentdata"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
</head>
<body>
	<%Studentdata s=(Studentdata)request.getAttribute("student"); %>
	
	<div>
	<h1>Student Home</h1>
		<table>			
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>					
				</tr>
					
				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>					
				</tr>			
		</table>
	</div>
</body>
</html>