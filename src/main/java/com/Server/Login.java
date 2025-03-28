package com.Server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		if(email.equals("admin123@gmail.com")&&password.equals("admin123")) {
			HttpSession sess=req.getSession();
			sess.setAttribute("email", email);
			resp.getWriter().println("Login Success"); 
		}
		else {
			req.setAttribute("msg","Invalid Email or Password");
			req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
		}
	}
}
