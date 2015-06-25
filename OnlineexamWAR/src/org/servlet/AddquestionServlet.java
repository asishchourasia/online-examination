package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.setquestions.Createquestions;
import org.dao.setquestions.QuestionDAO;

/**
 * Servlet implementation class AddquestionServlet
 */
@WebServlet("/AddquestionServlet")
public class AddquestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddquestionServlet() {
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
	
		
		String strchapterid=request.getParameter("chapid").trim();
		//String strquestionno=request.getParameter("questionno").trim();
		String strquestion=request.getParameter("question").trim().toUpperCase();
		String stroption1=request.getParameter("option1").trim().toUpperCase();
		String stroption2=request.getParameter("option2").trim().toUpperCase();
		String stroption3=request.getParameter("option3").trim().toUpperCase();
		String stroption4=request.getParameter("option4").trim().toUpperCase();
		String stranswer=request.getParameter("answer").trim().toUpperCase();
		
		//int questionno=Integer.parseInt(strquestionno);
		int chapterid=Integer.parseInt(strchapterid);
		Createquestions u=new Createquestions(chapterid,strquestion,stroption1,stroption2,stroption3,stroption4,stranswer);
		//u.setQuestionno(questionno);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try
		{
			QuestionDAO dao=new QuestionDAO();
			dao.create(u);
		    out.println("<B>QUESTION ADDED SUCCESSFULLY");
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
