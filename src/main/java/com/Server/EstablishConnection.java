package com.Server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class EstablishConnection {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","root");
			
			return co;
			}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	

}
