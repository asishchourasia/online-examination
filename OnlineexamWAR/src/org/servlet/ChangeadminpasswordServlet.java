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
import org.dao.admin.Admin;
import org.dao.admin.AdminDAO;

/**
 * Servlet implementation class ChangeadminpasswordServlet
 */
@WebServlet("/ChangeadminpasswordServlet")
public class ChangeadminpasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeadminpasswordServlet() {
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
		String oldpass=request.getParameter("oldpass");
		String newpass=request.getParameter("newpass");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			AdminDAO dao1=new AdminDAO();
			Admin u=(Admin)dao1.validate(username, oldpass);
			
			
			AdminDAO dao = new AdminDAO();
			
			dao.changepassword(username, oldpass, newpass);
			if(u!=null)
			out.println("<B><a href= ChangeadminpassServlet>CHANGED SUCCESSFULLY !! NOW GO BACK </a>");
			else
				out.println("<B><a href=ChangeadminpassServlet>ENTER CORRECT USERNAME AND PASSWORD !!</a>");
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
