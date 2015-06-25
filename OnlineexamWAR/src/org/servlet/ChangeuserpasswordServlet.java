package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.UserDAO;

/**
 * Servlet implementation class ChangeuserpasswordServlet
 */
@WebServlet("/ChangeuserpasswordServlet")
public class ChangeuserpasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeuserpasswordServlet() {
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
		String oldpass=request.getParameter("oldpassword");
		String newpass=request.getParameter("newpassword");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		UserDAO dao;
		try {
			dao = new UserDAO();
			dao.changepassword(username, oldpass, newpass);
			out.println("<B><a href= changeuserpassword.jsp>CHANGED SUCCESSFULLY !! NOW GO BACK </a>");
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
