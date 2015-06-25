package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.score.ScoreDAO;
import org.dao.setquestions.Createquestions;
import org.dao.setquestions.QuestionDAO;

/**
 * Servlet implementation class GetresultServlet
 */
@WebServlet("/GetresultServlet")
public class GetresultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetresultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd=request.getRequestDispatcher("/answer.jsp?");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String userName = null;
		String sessionID = null;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
		for(Cookie cookie : cookies){
		    if(cookie.getName().equals("user")) userName = cookie.getValue();
		    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
		}
		}

		Enumeration<String> coll=request.getParameterNames();
		
		//int coll1=Integer.parseInt(coll);
		ArrayList<String> attempted=new ArrayList<String>();
		while(coll.hasMoreElements())
		{
			attempted.add(coll.nextElement());
			
			
		}
		ArrayList<String> attempted_answers=new ArrayList<String>();
		for(String q : attempted)
		{
			attempted_answers.add(request.getParameter(q));
				
		}
		int score=0,correct=0,wrong=0;
		try 
		{
			
			QuestionDAO d=new QuestionDAO();
			for(int i=0;i<attempted.size();i++){
				int ques=Integer.parseInt(attempted.get(i));
	            Createquestions cq=d.getAnswer(ques);
	            String given_ans=attempted_answers.get(i);
	            if (given_ans.equalsIgnoreCase(cq.getAnswer()))
	            {
	            	score++;
	            	correct++;
	            }else
	            {
	            	wrong++;
	            }
	            
	            //request.setAttribute("ANS",al);
				//1 rdsuccess.forward(request, response);
				
			}
			
			int userid=Integer.parseInt(userName);
			
			String strcorrect=String.valueOf(correct);
			String strwrong=String.valueOf(wrong);
			request.setAttribute("CORRECT", strcorrect);
			request.setAttribute("WRONG", strwrong);
			rd.forward(request, response);
			//out.println("<b><h3>YOUR SCORE ="+score);
            //out.println("<b><h4>CORRECT ANSWERS ="+correct);
            //out.println("<b><h4>WRONG ANSWERS ="+wrong);
           
          //  out.println("<B><input type=submit value=TAKE ANOTHER TEST></input></B>");
            
            ScoreDAO dao=new ScoreDAO();
            dao.create(userid, score);
           // response.sendRedirect("HomepageServlet");
             
           // out.println("</form>");
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
    		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //String name[]=request.getParameterNames();
		
    
	
	}

}
