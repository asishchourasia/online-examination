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
 * Servlet implementation class UpdatequestionServlet
 */
@WebServlet("/UpdatequestionServlet")
public class UpdatequestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatequestionServlet() {
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
	int questionno=Integer.parseInt(request.getParameter("questionno").trim());
	int chapterid=Integer.parseInt(request.getParameter("chapterid").trim());
	String question=request.getParameter("question");
	String option1=request.getParameter("option1");
	String option2=request.getParameter("option2");
	String option3=request.getParameter("option3");
	String option4=request.getParameter("option4");
	String answer=request.getParameter("answer");
	Createquestions u=new Createquestions(chapterid,question,option1,option2,option3,option4,answer);
	u.setQuestionno(questionno);
	QuestionDAO dao;
	
	 response.setContentType("text/html");
     PrintWriter out=response.getWriter();

	try {
		dao = new QuestionDAO();
		dao.update(u);
		out.println("<B><a href=EditallquestionsServlet>Question changed...GO BACK</a>");
	} 
	catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}

}
