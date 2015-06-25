package org.dao.score;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.dao.User;
import org.dao.chapter.Chapter;

public class ScoreDAO {
	String Driver="com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/PROJECT";
	  String user="root";
	  String password="123";
private Connection con;
private PreparedStatement createscorePstmt,viewscorePstmt;
 
private String createscoreSql="INSERT INTO SCORE(USERID,SCORE)VALUES(?,?)";
private String viewscoreSql="SELECT * FROM SCORE ";
public ScoreDAO()throws ClassNotFoundException,SQLException
{
	  Class.forName(Driver);
	  con=DriverManager.getConnection(url, user, password);
	  createscorePstmt=con.prepareStatement(createscoreSql);
	  viewscorePstmt=con.prepareStatement(viewscoreSql);
}
public void create(int userid,int score)throws SQLException
{
	  createscorePstmt.setInt(1,userid);
	  createscorePstmt.setInt(2,score);
	  createscorePstmt.executeUpdate();
	  
}
public ArrayList<Score> display()throws SQLException
{
	  
			ResultSet rs=viewscorePstmt.executeQuery();
			  ArrayList<Score> al=new ArrayList<Score>();
			  while(rs.next())
			  {
				  int userid=rs.getInt(1);
				  int score=rs.getInt(2);
				  Score u=new Score(userid,score);
				  al.add(u);
               }
			  return al;
}
}
