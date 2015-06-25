package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.chapter.ChapterDAO;

/**
 * Servlet implementation class DeletechapterServlet
 */
@WebServlet("/DeletechapterServlet")
public class DeletechapterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletechapterServlet() {
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
		String strchapterid=request.getParameter("chapterid").trim();
		int chapterid=Integer.parseInt(strchapterid);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try
		{
			
			
			ChapterDAO dao=new ChapterDAO();
			if(dao.validatedelete(chapterid)==true)
			{
			dao.delete(chapterid);
			
			out.println("<B><a href= ChaptermanagementServlet>DELETED !! NOW GO BACK</a>");
			}
			else
			{
				out.println("<B><a href= ChaptermanagementServlet>PLEASE ENTER VALID ID !! NOW GO BACK</a>");
				
			}
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		catch(ClassNotFoundException e)
		{e.printStackTrace();}
	}

}
