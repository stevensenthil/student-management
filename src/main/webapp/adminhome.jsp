<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DTO.Studentdata"%>
    <%@ page import="com.DAO.StudentDAO" %>
    <%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

th, td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

th {
    background: #007bff;
    color: white;
    font-size: 16px;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

tr:hover {
    background: #ddd;
}

td {
    font-size: 14px;
    color: #333;
}

th, td {
    border: 1px solid #ccc;
}

table th:last-child, table td:last-child {
    width: 100px;
}
h2{
text-align: center;
}
#anchor{
	text-decoration: none;
	font-size: 15px;
	color: black;
	border: 1px solid black;	
	padding: 5px;
}
#all{
	display: flex;
	align-items:center;
	justify-content: space-around; 
}
#btn{
	text-decoration: none;
	font-size: 15px;
	color: black;
	border: 1px solid black;	
	padding: 5px;
}
</style>

</head>
<body>	
	<div>
	<h2>Admin Home Page</h2>
		<table>			
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
					<%
						List<Studentdata> studentlist = StudentDAO.findAllStudent();
						for (Studentdata s : studentlist) {
					%>
				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>
					<td><a href="editstudent.jsp?id=<%=s.getId()%>&name=<%=s.getName()%>&phy=<%=s.getPhysics()%>&chem=<%=s.getChemistry()%>&maths=<%=s.getMaths()%>">edit</a></td>
					<td><a href="deletestudent?id=<%=s.getId()%>" style="color: red;" onclick="return delete();">delete</a></td>
				</tr>
			<%
			}
			%>
		</table>
			<div id="all">
				<a href="addstudent.jsp" id="btn">Add Student</a>
				<a href="index.jsp" id="anchor">Logout</a>
			</div>
			
	</div>
	
	<script type="text/javascript">
		function delete() {
			let a=confirm("You want to delete the data");
			if(a){
				alert("Student data deleted successfully");
				return a;
			}
			else{
				alert("Student data not deleted");
				return a;
			}
		}
		
	</script>
</body>
</html>