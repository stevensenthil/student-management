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

@WebServlet("/addstudent")
public class Addstudent extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	String name=req.getParameter("name");
	int phy=Integer.parseInt(req.getParameter("physics"));
	int chem=Integer.parseInt(req.getParameter("chemistry"));
	int math=Integer.parseInt(req.getParameter("maths"));;
	Studentdata s=new Studentdata(id, name, phy, chem, math);
	int row;
	try {
		row=StudentDAO.savestudent(s);
		if(row==1) {
			req.setAttribute("msg", "Student data saved Successfully");
			req.getRequestDispatcher("addstudent.jsp").include(req, resp);;
		}
		else {
			req.setAttribute("msg", "Student data already exists");
			req.getRequestDispatcher("addstudent.jsp").include(req, resp);
		}
		
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
}
}
