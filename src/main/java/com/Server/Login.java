package com.Server;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.StudentDAO;

@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		boolean valid;
		try {
			valid=StudentDAO.findadmin(email, password);
			if(valid) {
				
				req.getRequestDispatcher("adminhome.jsp").include(req, resp);
			}
			else {
				req.setAttribute("msg","Invalid Email or Password");
				req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

//		else {
//			req.setAttribute("msg","Invalid Email or Password");
//			req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
//		}
	}
}
