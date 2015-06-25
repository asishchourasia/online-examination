package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.User;
import org.dao.UserDAO;
import org.dao.chapter.Chapter;
import org.dao.chapter.ChapterDAO;

/**
 * Servlet implementation class GetchapterServlet
 */
@WebServlet("/GetchapterServlet")
public class GetchapterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetchapterServlet() {
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
		
		String chaptername=request.getParameter("chaptername");
		  String type=request.getParameter("type");
		 //response.setContentType("text/html");
	     // PrintWriter out=response.getWriter();
		  
		RequestDispatcher rdsuccess=request.getRequestDispatcher("/GetquestionServlet");
		 RequestDispatcher rderror=request.getRequestDispatcher("/ErrorServlet");
		  try
		  {
			 // UserDAO dao=new UserDAO();
			  //User u=dao.validate(username, password);
			   

			  ChapterDAO dao=new ChapterDAO();
			  Chapter u=dao.validate(chaptername, type);
			  
			  if(u!=null)
			  {
				  
				 request.setAttribute("CHAP",u);
				 request.setAttribute("NAME",u);
				 rdsuccess.forward(request, response);
				  }
			  else{
				  request.setAttribute("ERRMSG","INVALID CHAPTERNAME OR TYPE");
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


