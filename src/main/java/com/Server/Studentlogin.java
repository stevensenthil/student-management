package com.Server;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.StudentDAO;
import com.DTO.Studentdata;

@WebServlet("/studentlogin")
public class Studentlogin extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	
	try {
		Studentdata s=StudentDAO.findstudent(id);
		if(s!=null) {
			req.setAttribute("student", s);
			req.setAttribute("msg", "Login Success");
			req.getRequestDispatcher("studentlogin.jsp").include(req, resp);
		}
		else {
			req.setAttribute("msg", "Student is not exists ");
			req.getRequestDispatcher("studentlogin.jsp").include(req, resp);
		}
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
}
}
