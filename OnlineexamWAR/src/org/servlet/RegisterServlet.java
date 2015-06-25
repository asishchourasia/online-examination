package org.servlet;
import javax.servlet.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.dao.*;
import java.io.*;
import java.sql.*;
import java.util.*;
/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String strfirstname=request.getParameter("firstname");
		String strlastname=request.getParameter("lastname");
		String stremailid=request.getParameter("emailid");
		String strgender=request.getParameter("r1");
		
		String straddress=request.getParameter("address");
		String strcity=request.getParameter("city");
		String strstate=request.getParameter("state");
		String strpin=request.getParameter("pin");
		String strinsname=request.getParameter("insname");
		String strdegree=request.getParameter("degree");
		String stryop=request.getParameter("yop");
		String strusername=request.getParameter("username");
		String strpassword=request.getParameter("password");
		//String struserid=request.getParameter("userid").trim();
		
		//int dobdate=Integer.parseInt(strdobdate);
		//int dobyear=Integer.parseInt(strdobyear);
		//int pin=Integer.parseInt(strpin);
		//int yop=Integer.parseInt(stryop);
		//int userid=Integer.parseInt(struserid);
		
		User u=new User(strfirstname,strlastname,stremailid,strgender,straddress,strcity,strstate,strpin,strinsname,strdegree,stryop,strusername,strpassword);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try
		{
			UserDAO dao=new UserDAO();
			dao.create(u);
			out.println("<b> CUSTOMER ADDED SUCCESSFULLY </b>");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			out.println("<b> SQL PROBLEM "+e.getMessage()+"</b>");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			out.println("<b> CLASS LOADING PROBLEM "+e.getMessage()+"</b>");
		}
		out.close();
	}

}
