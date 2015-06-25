package org.dao.setquestions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import org.dao.User;
import org.dao.chapter.Chapter;

public class QuestionDAO {
	String Driver="com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/PROJECT";
	  String user="root";
	  String password="123";
private Connection con;
private PreparedStatement getanswerPstmt,addquestionPstmt,viewquestionPstmt,updatequestionPstmt,getquestionPstmt,getresultPstmt,editquestionPstmt,getquestiondetailsPstmt;
private String addquestionSql="INSERT INTO QUESTION(CHAPTERID,QUESTIONNO,QUESTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER)VALUES(?,?,?,?,?,?,?,?)";
private String viewquestionSql="SELECT * FROM QUESTION";
private String getquestionSql="SELECT CHAPTERID,QUESTIONNO,QUESTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER FROM QUESTION WHERE CHAPTERID=?";
private String getresultSql="SELECT * FROM QUESTION WHERE QUESTION=?";
private String getquestiondetailsSql="SELECT * FROM QUESTION WHERE QUESTIONNO=?";
private String getanswerSql="SELECT CHAPTERID,QUESTIONNO,QUESTION,OPTION1,OPTION2,OPTION3,OPTION4,ANSWER FROM QUESTION WHERE QUESTIONNO=?";
private String editquestionSql="UPDATE QUESTION SET QUESTION=?,OPTION1=?,OPTION2=?,OPTION3=?,OPTION4=?,ANSWER=? WHERE QUESTIONNO=?";
//private String validateSql="SELECT FIRSTNAME,LASTNAME,EMAILID,GENDER,ADDRESS,CITY,STATE,PIN,INSTITUTENAME,DEGREE,YEAROFPASSING,USERNAME,PASSWORD,USERID FROM USERTABLE WHERE USERNAME=? AND PASSWORD=?";
public QuestionDAO()throws ClassNotFoundException,SQLException
{
	  Class.forName(Driver);
	  con=DriverManager.getConnection(url, user, password);
	  addquestionPstmt=con.prepareStatement(addquestionSql);
	  viewquestionPstmt=con.prepareStatement(viewquestionSql);
	  getquestionPstmt=con.prepareStatement(getquestionSql);
	  getresultPstmt=con.prepareStatement(getresultSql);
	  getanswerPstmt=con.prepareStatement(getanswerSql);
	  editquestionPstmt=con.prepareStatement(editquestionSql);
	  //validatePstmt=con.prepareStatement(validateSql);
      getquestiondetailsPstmt=con.prepareStatement(getquestiondetailsSql);	  
}
public void create(Createquestions u)throws SQLException
{
	  addquestionPstmt.setInt(1,u.getChapterid());
	  addquestionPstmt.setInt(2, u.getQuestionno());
	  addquestionPstmt.setString(3, u.getQuestion());
	  addquestionPstmt.setString(4, u.getOption1());
	  addquestionPstmt.setString(5, u.getOption2());
	  addquestionPstmt.setString(6, u.getOption3());
	  addquestionPstmt.setString(7, u.getOption4());
	  addquestionPstmt.setString(8, u.getAnswer());
	  
	  addquestionPstmt.executeUpdate();
	  
}
public ArrayList view()throws SQLException
{
  ResultSet rs=viewquestionPstmt.executeQuery();
  ArrayList<Createquestions> al=new ArrayList<Createquestions>();
  while(rs.next())
  {
	  int chapterid=rs.getInt(1);
	  int questionno=rs.getInt(2);
	  String question=rs.getString(3);
	  String option1=rs.getString(4);
	  String option2=rs.getString(5);
	  String option3=rs.getString(6);
	  String option4=rs.getString(7);
	  String answer=rs.getString(8);
	  Createquestions u=new Createquestions(chapterid,question,option1,option2,option3,option4,answer);
      u.setQuestionno(questionno);
	  al.add(u);
  
  }
  return al;
}

public Collection<Createquestions> validate(int chapterid)throws SQLException
{
	 getquestionPstmt.setInt(1,chapterid );
	 
	 
	  ResultSet rs=getquestionPstmt.executeQuery();
	  Collection<Createquestions> al=new ArrayList<Createquestions>();
	 
	  while(rs.next())
	  {
		  int chapterid1=rs.getInt(1);
		  int questionno=rs.getInt(2);
		  String question=rs.getString(3);
		  String option1=rs.getString(4);
		  String option2=rs.getString(5);
		  String option3=rs.getString(6);
		  String option4=rs.getString(7);
		  String answer=rs.getString(8);
		  Createquestions u=new Createquestions(chapterid1,question,option1,option2,option3,option4,answer);
		  u.setQuestionno(questionno);
		  al.add(u);
		  
	  }
	  return al;
}
public Createquestions getResult(String question)throws SQLException
{
	getresultPstmt.setString(1,question );
	 
	 
	  ResultSet rs=getresultPstmt.executeQuery();
	  //Collection<Createquestions> al=new ArrayList<Createquestions>();
	 //Createquestions u=new Createquestions();
	  if(rs.next())
	  {
		  int chapterid=rs.getInt(1);
		  int questionno=rs.getInt(2);
		  String question1=rs.getString(3);
		  String option1=rs.getString(4);
		  String option2=rs.getString(5);
		  String option3=rs.getString(6);
		  String option4=rs.getString(7);
		  String answer=rs.getString(8);
		  Createquestions u=new Createquestions(chapterid,question1,option1,option2,option3,option4,answer);
		  u.setQuestionno(questionno);
		  return u;  
		  
	  }
	  else
		  return null;
  }
public Createquestions getAnswer(int questionno)throws SQLException
{
	  getanswerPstmt.setInt(1,questionno);
	  
	  ResultSet rs=getanswerPstmt.executeQuery();
	  if(rs.next())
	  {
		  
		  int chapterid=rs.getInt(1);
		  int questionno1=rs.getInt(2);
		  String question=rs.getString(3);
		  String option1=rs.getString(4);
		  String option2=rs.getString(5);
		  String option3=rs.getString(6);
		  String option4=rs.getString(7);
		  String answer=rs.getString(8);
		  
		  Createquestions c=new Createquestions(chapterid,question,option1,option2,option3,option4,answer);
		  c.setQuestionno(questionno1);
		  return c;
		  
	  }
	  else
	  {
		  return null;
	  }
}
public void update(Createquestions u)throws SQLException
{
	  editquestionPstmt.setInt(7, u.getQuestionno());
	 
	  	 
	  editquestionPstmt.setString(1,u.getQuestion());
	  editquestionPstmt.setString(2, u.getOption1());

	  editquestionPstmt.setString(3,u.getOption2());
	  editquestionPstmt.setString(4, u.getOption3());

	  editquestionPstmt.setString(5,u.getOption4());
	  editquestionPstmt.setString(6, u.getAnswer());
	  editquestionPstmt.executeUpdate();
	  
	  
}

public Createquestions quesdetails(int questionno)throws SQLException
{
	 getquestiondetailsPstmt.setInt(1,questionno );
	 
	 
	  ResultSet rs=getquestiondetailsPstmt.executeQuery();
	  Collection<Createquestions> al=new ArrayList<Createquestions>();
	 
	  if(rs.next())
	  {
		  int chapterid=rs.getInt(1);
		  int questionno1=rs.getInt(2);
		  String question=rs.getString(3);
		  String option1=rs.getString(4);
		  String option2=rs.getString(5);
		  String option3=rs.getString(6);
		  String option4=rs.getString(7);
		  String answer=rs.getString(8);
		  Createquestions u=new Createquestions(chapterid,question,option1,option2,option3,option4,answer);
		 // al.add(u);
		  u.setQuestionno(questionno);
		  return u;  
	  }
	  else
	  {
		  return null;
	  }
}



}

