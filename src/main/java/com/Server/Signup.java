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
@WebServlet("/signup")
public class Signup extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter p=resp.getWriter();
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String contact=req.getParameter("contact");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String repass=req.getParameter("repass");	
		
		
		try {
			Connection con=EstablishConnection.getConnection();
			PreparedStatement pst=con.prepareStatement("insert into admin values(?,?,?,?,?)");
			pst.setInt(1, Integer.parseInt(id));
			pst.setString(2, name);
			pst.setString(3, email);
			pst.setString(4, contact);
			pst.setString(5, pass);
			if(pass.equals(repass)) {
			boolean Result=pst.execute();
			if(!Result) {
//				p.println("Insert success");
				req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
			}
			}
			else {
				req.setAttribute("msg","Password do not match");
				req.getRequestDispatcher("adminsignup.jsp").include(req, resp);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
