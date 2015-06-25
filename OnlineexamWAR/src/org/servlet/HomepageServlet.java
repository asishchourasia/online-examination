package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dao.User;
import org.dao.UserDAO;
import org.dao.chapter.Chapter;
import org.dao.chapter.ChapterDAO;

/**
 * Servlet implementation class HomepageServlet
 */
@WebServlet("/HomepageServlet")
public class HomepageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomepageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		  String password=request.getParameter("password");
		 response.setContentType("text/html");
	      PrintWriter out=response.getWriter();
	      
	      
		RequestDispatcher rdsuccess=request.getRequestDispatcher("/selectchapter.jsp");
		 RequestDispatcher rderror=request.getRequestDispatcher("/ErrorServlet");
		  try
		  {
			  UserDAO dao=new UserDAO();
			  User u=dao.validate(username, password);

			  ChapterDAO dao1=new ChapterDAO();
			  Collection<Chapter> al=dao1.getAllChapter();
			  
			  if(u!=null&&al!=null)
			  {
				  request.setAttribute("NAME", u);
				 request.setAttribute("SELECT",al);
				 HttpSession session = request.getSession();
		            session.setAttribute("user", String.valueOf(u.getUserid()));
		           
		            //setting session to expiry in 1 mins
		            session.setMaxInactiveInterval(60*60);
		            Cookie userName = new Cookie("user",String.valueOf(u.getUserid()));
		            
		            userName.setMaxAge(50*60);
		            response.addCookie(userName);
		            //response.sendRedirect("LoginSuccess.jsp");
				 rdsuccess.forward(request, response);
				 }
			  else{
				  request.setAttribute("ERRMSG","INVALID USER OR PASSWORD");
				  
				   rderror.forward(request, response);
		          }
			  } 
			  
		  
		  
		  catch(ClassNotFoundException e)
		  {
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
