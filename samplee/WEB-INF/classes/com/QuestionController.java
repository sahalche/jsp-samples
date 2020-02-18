package com;
import com.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;


import java.util.ArrayList;
import java.util.Collections;

public class QuestionController extends HttpServlet
{

	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		ArrayList<Question> lists=new ArrayList<Question>();
		for(int i=0;i<3;i++)
		{
			Question q=new Question();
			q.setQuestionName("NAme"+0);
			q.setOption1("Option 1 of "+i+"th Question");
			q.setOption2("Option 2 of "+i+"th Question");
			q.setOption3("Option 3 of "+i+"th Question");
			q.setAnswer("Option "+(i+1)+" of "+i+"th Question");
			lists.add(q);
			
		}
		HttpSession session=request.getSession();
		session.setAttribute("questions",lists);
		
		RequestDispatcher view=request.getRequestDispatcher("HomePage.jsp?count=0");
		view.forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		System.out.println("post method is running");
HttpSession session=request.getSession();
			ArrayList<QuizResult> quizResultList=(ArrayList<QuizResult>)session.getAttribute("answer");
		for(QuizResult q:quizResultList)
		{
			System.out.println(q.getChoice());
		}
		
	}
}