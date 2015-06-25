package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
 * Servlet implementation class CreatechapterServlet
 */
@WebServlet("/CreatechapterServlet")
public class CreatechapterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreatechapterServlet() {
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
		
		String strchaptername=request.getParameter("chaptername").toUpperCase();
		//strchaptername.toUpperCase();
		String strtype=request.getParameter("type").toUpperCase();
		
		Chapter u=new Chapter(strchaptername,strtype);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try
		{
			ChapterDAO dao=new ChapterDAO();
			dao.create(u);
		    out.println("<B>CHAPTER ADDED SUCCESSFULLY<br>");
		    out.println("<B><a href=ChaptermanagementServlet>CLICK HERE TO GO BACK</a>");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			out.println("<B>"+e.getMessage());
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			out.println("<B>"+e.getMessage());
		}
		out.close();
	}
		
	}


