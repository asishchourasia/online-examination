package org.dao.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.dao.User;

public class AdminDAO {
	String Driver="com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/PROJECT";
	  String user="root";
	  String password="123";
private Connection con;
private PreparedStatement validatePstmt,updatepassPstmt,getadminPstmt;
private String validateSql="SELECT USERNAME,PASSWORD FROM ADMINTABLE WHERE USERNAME=? AND PASSWORD=?";
private String getadminSql="SELECT * FROM ADMINTABLE WHERE USERNAME=?";
private String updatepassSql="UPDATE  ADMINTABLE SET PASSWORD=? WHERE USERNAME=? AND PASSWORD=?";

public AdminDAO()throws ClassNotFoundException,SQLException
{
	  Class.forName(Driver);
	  con=DriverManager.getConnection(url, user, password);
	  validatePstmt=con.prepareStatement(validateSql);
      getadminPstmt=con.prepareStatement(getadminSql);
	  updatepassPstmt=con.prepareStatement(updatepassSql);
}
public Admin validate(String username,String password)throws SQLException
{
	  validatePstmt.setString(1, username);
	  validatePstmt.setString(2, password);
	  ResultSet rs=validatePstmt.executeQuery();
	  if(rs.next())
	  {
		  
		  String username1=rs.getString(1);
		  String password1=rs.getString(2);
		  Admin a=new Admin(username1,password1);
		  return a;
	  }
	  else
	  {
		  return null;
	  }
}
public void changepassword(String username, String oldpass, String newpass)throws SQLException {
	// TODO Auto-generated method stub
	updatepassPstmt.setString(1,newpass);
 	 updatepassPstmt.setString(2,username);
 	 updatepassPstmt.setString(3, oldpass); 	 
 	  updatepassPstmt.executeUpdate();
	
}

public Admin getadmin(String username)throws SQLException
{
	  getadminPstmt.setString(1, username);
	 
	  ResultSet rs=getadminPstmt.executeQuery();
	  if(rs.next())
	  {
		  
		  String username1=rs.getString(1);
		  String password=rs.getString(2);
		  Admin a=new Admin(username1,password);
		  return a;
	  }
	  else
	  {
		  return null;
	  }
}


}
