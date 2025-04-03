package com.Server;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.StudentDAO;
@WebServlet("/signup")
public class Signup extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");		
		String email=req.getParameter("email");
		long contact=Long.parseLong(req.getParameter("contact"));
		String pass=req.getParameter("pass");
		String repass=req.getParameter("repass");	
		
		try {	
			if (pass != null && repass != null && !pass.equals(repass)) {
		        req.setAttribute("errorMsg", "Passwords do not match!");
		        req.getRequestDispatcher("adminsignup.jsp").forward(req, resp);
		    }
			else {
				int row=StudentDAO.saveadmin(id, name,email,contact, pass);
				if(row==1) {
				req.getRequestDispatcher("adminlogin.jsp").include(req, resp);			
				}
			}
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
