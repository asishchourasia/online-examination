package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
import org.dao.admin.Admin;
import org.dao.admin.AdminDAO;

/**
 * Servlet implementation class AdminloginServlet
 */
@WebServlet("/AdminloginServlet")
public class AdminloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminloginServlet() {
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
		String username=request.getParameter("username");
		  String password=request.getParameter("password");
		// response.setContentType("text/html");
	     // PrintWriter out=response.getWriter();
		 RequestDispatcher rdsuccess=request.getRequestDispatcher("/adminhomepage.jsp");
		 RequestDispatcher rderror=request.getRequestDispatcher("/ErrorServlet");
		  try
		  {
			  AdminDAO dao=new AdminDAO();
			  Admin a=dao.validate(username, password);
			  if(a!=null)
			  {
				  HttpSession session = request.getSession();
		            session.setAttribute("admin", a.getUsername());
		           
		            //setting session to expiry in 1 mins
		            session.setMaxInactiveInterval(60*60);
		            Cookie adminName = new Cookie("admin",a.getUsername());
		            
		            adminName.setMaxAge(50*60);
		            response.addCookie(adminName);
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
