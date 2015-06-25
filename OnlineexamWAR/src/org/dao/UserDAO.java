package org.dao;
import java.sql.*; 
import java.util.ArrayList;
import java.util.Collection;

import org.dao.chapter.Chapter;
import org.dao.setquestions.Createquestions;
public class UserDAO
{
	String Driver="com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/PROJECT";
	  String user="root";
	  String password="123";
  private Connection con;
  private PreparedStatement createPstmt,validatePstmt,displayPstmt,updatepassPstmt,getnamePstmt;
  private String createSql="INSERT INTO USERTABLE1(FIRSTNAME,LASTNAME,EMAILID,GENDER,ADDRESS,CITY,STATE,PIN,INSTITUTENAME,DEGREE,YEAROFPASSING,USERNAME,PASSWORD,USERID)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  private String validateSql="SELECT FIRSTNAME,LASTNAME,EMAILID,GENDER,ADDRESS,CITY,STATE,PIN,INSTITUTENAME,DEGREE,YEAROFPASSING,USERNAME,PASSWORD,USERID FROM USERTABLE1 WHERE USERNAME=? AND PASSWORD=?";
  private String displaySql="SELECT * FROM USERTABLE1";
  private String updatepassSql="UPDATE  USERTABLE1 SET PASSWORD=? WHERE USERNAME=? AND PASSWORD=?";
  private String getnameSql="SELECT * FROM USERTABLE1 WHERE USERID=?";
  
  public UserDAO()throws ClassNotFoundException,SQLException
  {
	  Class.forName(Driver);
	  con=DriverManager.getConnection(url, user, password);
	  createPstmt=con.prepareStatement(createSql);
	  validatePstmt=con.prepareStatement(validateSql);
	  displayPstmt=con.prepareStatement(displaySql);
	  updatepassPstmt=con.prepareStatement(updatepassSql);
	  getnamePstmt=con.prepareStatement(getnameSql);
  }
  public void create(User u)throws SQLException
  {
	  createPstmt.setString(1, u.getFirstname());
	  createPstmt.setString(2, u.getLastname());
	  createPstmt.setString(3, u.getEmailid());
	  createPstmt.setString(4, u.getGender());
	  
	  createPstmt.setString(5, u.getAddress());
	  createPstmt.setString(6, u.getCity());
	  createPstmt.setString(7, u.getState());
	  createPstmt.setString(8, u.getPin());
	  createPstmt.setString(9, u.getInsname());
	  createPstmt.setString(10, u.getDegree());
	  createPstmt.setString(11, u.getYop());
	  createPstmt.setString(12, u.getUsername());
	  createPstmt.setString(13, u.getPassword());
	  createPstmt.setInt(14, u.getUserid());
	  createPstmt.executeUpdate();
	  
  }
  public User validate(String username,String password)throws SQLException
  {
	  validatePstmt.setString(1, username);
	  validatePstmt.setString(2, password);
	  ResultSet rs=validatePstmt.executeQuery();
	  if(rs.next())
	  {
		  
		  String firstname=rs.getString(1);
		  String lastname=rs.getString(2);
		  String emailid=rs.getString(3);
		  String gender=rs.getString(4);
		  String address=rs.getString(5);
		  String city=rs.getString(6);
		  String state=rs.getString(7);
		  String pin=rs.getString(8);
		  String insname=rs.getString(9);
		  String degree=rs.getString(10);
		  String yop=rs.getString(11);
		  String username1=rs.getString(12);
		  String password1=rs.getString(13);
		  int userid=rs.getInt(14);
		 
		  
		  User u=new User(firstname,lastname,emailid,gender,address,city,state,pin,insname,degree,yop,username1,password1);
		  u.setUserid(userid);
		  return u;
		  
	  }
	  else
	  {
		  return null;
	  }
  }
  public ArrayList<User> display()throws SQLException
  {
	  
			ResultSet rs=displayPstmt.executeQuery();
			  ArrayList<User> al=new ArrayList<User>();
			  while(rs.next())
			  {
				  String firstname=rs.getString(1);
				  String lastname=rs.getString(2);
				  String emailid=rs.getString(3);
				  String gender=rs.getString(4);
				  String address=rs.getString(5);
				  String city=rs.getString(6);
				  String state=rs.getString(7);
				  String pin=rs.getString(8);
				  String insname=rs.getString(9);
				  String degree=rs.getString(10);
				  String yop=rs.getString(11);
				  String username=rs.getString(12);
				  String password=rs.getString(13);
				  int userid=rs.getInt(14);
				  
				  
				
					User u=new User(firstname,lastname,emailid,gender,address,city,state,pin,insname,degree,yop,username,password);
				  	u.setUserid(userid);
					al.add(u);
			  
			  }
			  return al;

  }
  public void changepassword(String username,String password,String newpassword)throws SQLException
  {
  	  updatepassPstmt.setString(1,newpassword);
  	 updatepassPstmt.setString(2,username);
  	 updatepassPstmt.setString(3, password); 	 
  	  updatepassPstmt.executeUpdate();
  	  
  	  
  }
  
  public User getname(int userid)throws SQLException
  {
	  
	  getnamePstmt.setInt(1, userid);
	  ResultSet rs=getnamePstmt.executeQuery();
	  if(rs.next())
	  {
		  
		  String firstname=rs.getString(1);
		  String lastname=rs.getString(2);
		  String emailid=rs.getString(3);
		  String gender=rs.getString(4);
		  String address=rs.getString(5);
		  String city=rs.getString(6);
		  String state=rs.getString(7);
		  String pin=rs.getString(8);
		  String insname=rs.getString(9);
		  String degree=rs.getString(10);
		  String yop=rs.getString(11);
		  String username1=rs.getString(12);
		  String password1=rs.getString(13);
		  int userid1=rs.getInt(14);
		 
		  
		  User u=new User(firstname,lastname,emailid,gender,address,city,state,pin,insname,degree,yop,username1,password1);
		  u.setUserid(userid1);
		  return u;
		  
	  }
	  else
	  {
		  return null;
	  }
  }
 
}
