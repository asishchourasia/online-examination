package org.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.chapter.Chapter;
import org.dao.chapter.ChapterDAO;
import org.dao.setquestions.Createquestions;
import org.dao.setquestions.QuestionDAO;

/**
 * Servlet implementation class GetquestionServlet
 */
@WebServlet("/GetquestionServlet")
public class GetquestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetquestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			   }
		
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
		
		
		Chapter u=(Chapter)request.getAttribute("CHAP");
		RequestDispatcher rdsuccess=request.getRequestDispatcher("/question1.jsp");
		RequestDispatcher rderror=request.getRequestDispatcher("/ErrorServlet");
		  try
		  {
			  
			  QuestionDAO dao=new QuestionDAO();
			  Collection<Createquestions> al=(Collection<Createquestions>)dao.validate(u.getChapterid());
			  
			  
			  
			  
			  if(al!=null)
			  {
				 request.setAttribute("QUES",al);
				 rdsuccess.forward(request, response);
				}
			  else{
				  request.setAttribute("ERRMSG","INVALID USER OR PASSWORD");
				  rderror.forward(request, response);
		          }
			  } 
			  
		  
		  
		  catch(ClassNotFoundException e)
		  {
			 e.printStackTrace();
			 
			 request.setAttribute("ERRMSG","CLASS LOADING ERROR"+e.getMessage());
			  rderror.forward(request, response);
		  }
		  catch(SQLException e)
		  {
			  e.printStackTrace();
			  request.setAttribute("ERRMSG","SQL ERROR"+e.getMessage());
			  rderror.forward(request, response);
			 
		  }
		  


	
	}

}
