package org.dao.chapter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import org.dao.admin.Admin;
import org.dao.setquestions.Createquestions;

public class ChapterDAO {
	String Driver="com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/PROJECT";
	  String user="root";
	  String password="123";
private Connection con;
private PreparedStatement getchapterPstmt,createchapterPstmt,deletechapterPstmt,viewchapterPstmt,getchapteridPstmt,validatePstmt;
private String getchapterSql="SELECT CHAPTERID,CHAPTERNAME,TYPE FROM CHAPTER";
private String createchapterSql="INSERT INTO CHAPTER(CHAPTERNAME,TYPE)VALUES(?,?)";
private String deletechapterSql="DELETE FROM CHAPTER WHERE CHAPTERID=?";
private String viewchapterSql= "SELECT * FROM CHAPTER";
private String getchapteridSql="SELECT CHAPTERID,CHAPTERNAME,TYPE FROM CHAPTER WHERE CHAPTERNAME=? AND TYPE=?";
private String validateSql="SELECT * FROM CHAPTER WHERE CHAPTERID=?";

public ChapterDAO()throws ClassNotFoundException,SQLException
{
	  Class.forName(Driver);
	  con=DriverManager.getConnection(url, user, password);
	  getchapterPstmt=con.prepareStatement(getchapterSql);
	  createchapterPstmt=con.prepareStatement(createchapterSql);
	  deletechapterPstmt=con.prepareStatement(deletechapterSql);
	  viewchapterPstmt=con.prepareStatement(viewchapterSql);
	  validatePstmt=con.prepareStatement(validateSql);
	  getchapteridPstmt=con.prepareStatement(getchapteridSql);
}
public Collection<Chapter>getAllChapter()throws SQLException
{
	ResultSet rs=getchapterPstmt.executeQuery();
	  Collection<Chapter> al=new ArrayList<Chapter>();
	  while(rs.next())
	  {
		  int chapterid=rs.getInt(1);
		  String chaptername=rs.getString(2);
		  String type=rs.getString(3);
		
		  Chapter u=new Chapter(chaptername,type);
		  u.setChapterid(chapterid);
	      al.add(u);
	  
	  }
	  return al;
	
}
public void create(Chapter u)throws SQLException
{
	  createchapterPstmt.setString(1,u.getChaptername());
	  createchapterPstmt.setString(2, u.getType());
	  createchapterPstmt.executeUpdate();
	  
}
public void delete(int chapterid)throws SQLException
{
		deletechapterPstmt.setInt(1,chapterid);
		
		deletechapterPstmt.executeUpdate();
		
}
public ArrayList view()throws SQLException
{
  ResultSet rs=viewchapterPstmt.executeQuery();
  ArrayList<Chapter> al=new ArrayList<Chapter>();
  while(rs.next())
  {
	  int chapterid=rs.getInt(1);
	  String chaptername=rs.getString(2);
	  String type=rs.getString(3);
	  Chapter u=new Chapter(chaptername,type);
	  u.setChapterid(chapterid);
      al.add(u);
  
  }
  return al;
}
public Chapter validate(String chaptername,String type)throws SQLException
{
	
	  getchapteridPstmt.setString(1,chaptername );
	  getchapteridPstmt.setString(2, type);
	  ResultSet rs=getchapteridPstmt.executeQuery();
	  if(rs.next())
	  {
		  int chapterid=rs.getInt(1);
		  String chaptername1=rs.getString(2);
		  String type1=rs.getString(3);
		  Chapter a=new Chapter(chaptername1,type1);
		  a.setChapterid(chapterid);
		  return a;
	  }
	  else
	  {
		  return null;
	  }
}

public boolean validatedelete(int chapterid)throws SQLException
{
	validatePstmt.setInt(1, chapterid);
	ResultSet rs=validatePstmt.executeQuery();
	if(rs.next())
	{
		return true;
		
	}
	else
	{
		return false;
	}
}

}
