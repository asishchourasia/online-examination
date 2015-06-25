package org.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.chapter.Chapter;
import org.dao.chapter.ChapterDAO;

/**
 * Servlet implementation class LinkaddchapterServlet
 */
@WebServlet("/LinkaddchapterServlet")
public class LinkaddchapterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LinkaddchapterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rdview=request.getRequestDispatcher("/linkaddquestions.jsp");
		RequestDispatcher rderror=request.getRequestDispatcher("/ErrorServlet");
		try
		{
			ChapterDAO dao=new ChapterDAO();
			Collection<Chapter> a=(Collection<Chapter>) dao.getAllChapter();
			if(a!=null)
			{
				request.setAttribute("LIST", a);
				rdview.forward(request, response);
			}
			else
			{
				request.setAttribute("ERRMSG","CHAPTER NOT VALID !!");
				rderror.forward(request, response);
			}
		}
		catch(SQLException e)
		{e.printStackTrace();}
		catch(ClassNotFoundException e)
		{e.printStackTrace();}
		
			    
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


}
}