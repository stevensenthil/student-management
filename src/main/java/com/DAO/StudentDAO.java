package com.DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DTO.Studentdata;

public class StudentDAO {
//	Connection Method
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","root");
		return con;		
	}
//	Save Student
	public static int savestudent(Studentdata s) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into students values(?,?,?,?,?)");
		pst.setInt(1,s.getId() );
		pst.setString(2,s.getName() );
		pst.setInt(3, s.getPhysics());
		pst.setInt(4, s.getChemistry());
		pst.setInt(5, s.getMaths());		
		return pst.executeUpdate();
		}
//	Find Student
	public static Studentdata findstudent(int id) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from students where id=?");
		pst.setInt(1,id);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			Studentdata s=new Studentdata(rs.getInt(1),rs.getString(2),rs.getInt(3), rs.getInt(4), rs.getInt(5));
			return s;
		}		
		return null;
		}
//	Delete Student
	public static int deletestudent(int id) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("delete from students where id=?");
		pst.setInt(1,id);
		return pst.executeUpdate();
	}	
//	Findall Student	
	public static List<Studentdata> findAllStudent() throws SQLException, ClassNotFoundException {
	    Connection con = getConnection();
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery("select * from students");
	    List<Studentdata> l = new ArrayList<>();
	    while (rs.next()) {
	        Studentdata s = new Studentdata(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
	        l.add(s);
	    }
	    return l;
	}	
//	Find Admin
	public static boolean findadmin(String email, String password) throws SQLException, ClassNotFoundException {
	    Connection con = getConnection();
	    PreparedStatement pst = con.prepareStatement("select * from admin where email=? and password=?");
	    pst.setString(1, email);
	    pst.setString(2, password);
	    ResultSet rs = pst.executeQuery();
	    if (rs.next()) {
	        return true;
	    } else {
	        return false;
	    }
	}
	
//	Save Admin
	public static int saveadmin(int id, String name,  String email,long contact, String password) throws SQLException, ClassNotFoundException {
	    Connection con = getConnection();
	    PreparedStatement pst = con.prepareStatement("insert into admin values(?,?,?,?,?)");
	    pst.setInt(1, id);
	    pst.setString(2, name);
	    pst.setString(3, email);
	    pst.setLong(4, contact);	    
	    pst.setString(5, password);
	    return pst.executeUpdate();
	}
//	Update Student
	public static int updatestudent(int id,String name,int physics,int chemistry,int maths) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("update students set name=?,physics=?,chemistry=?,maths=? where id=?");
		pst.setString(1, name);
		pst.setInt(2, physics);
		pst.setInt(3, chemistry);
		pst.setInt(4, maths);
		pst.setInt(5,id);
		return pst.executeUpdate();
	}
	
	
}
