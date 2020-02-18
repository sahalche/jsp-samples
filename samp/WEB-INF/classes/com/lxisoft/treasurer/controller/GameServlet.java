package com.lxisoft.treasurer.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.lxisoft.treasurer.controller.*;
import com.lxisoft.treasurer.model.*;

/**
 * The QuestionController class is an Controller of Home page
 * 
 * @author MOHAMMED SAHAL
 * @version 1.0
 * @since 2018-07-24
 */

public class GameServlet extends HttpServlet
{
	
	static Logger log = Logger.getLogger(GameServlet.class.getName());
	
	static int questionMaxLength;
	static int optionMaxlength;
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{ 
	int count=0;
	int chance = 2;
	HttpSession session=request.getSession();
	Game game=new Game();
	game.setQuestions(getQuestions());
	questionMaxLength=game.getQuestions().size();
	game.setOptions(findOptions());
	game.setSelection(new Option());
		
		session.setAttribute("game",game);
		session.setAttribute("username",request.getRemoteUser());
		session.setAttribute("chance",chance);
	    session.setAttribute("count",count);
		
		RequestDispatcher view=request.getRequestDispatcher("playgame.jsp");
		view.forward(request,response);
	}
	
	
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		
		HttpSession session=request.getSession();
		GamePageModel gamePage=(GamePageModel)session.getAttribute("gamePage");
		gamePage.setChoice(request.getParameter("choice"));
	
		int count=(Integer)session.getAttribute("count");
	    int chance = (Integer)session.getAttribute("chance");
		
	if(gamePage.getQuestion().getAnswer().getOption().equals(gamePage.getChoice()))
	{
		count = (Integer)session.getAttribute("count");
		count++;
		session.setAttribute("count",count);
		if(count==questionMaxLength)
		{
			response.sendRedirect("output?status=true");
		}
		else{
			response.sendRedirect("playgame.jsp?status=true");
		}
	}	
	else
	{
		
		chance--;
		session.setAttribute("chance",chance);
	
		
			
		
		if(chance==0)
		{
			
			
		      response.sendRedirect("output?status=false");
			
		}
		else
		{
			response.sendRedirect("playgame.jsp");
		}
		  
	}
		
		
		
		
		
	}
	
	public ArrayList<Question> getQuestions()
	{
		ArrayList<Question> questionList=findAllQuestions();
		
		ArrayList<Question> questions=new ArrayList<Question>();
		for(int i=0;i<6;i++)
		{
			questions.add(questionList.get(i));	
		}
		
		return questions;
	}
	
	
	public ArrayList<Question> findAllQuestions()
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Question> questionList=new ArrayList<Question>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "root");
				statement = connection.createStatement();
			
			String sql;
			sql="SELECT * FROM questions";
			ResultSet rs=statement.executeQuery(sql);
			while (rs.next()) {
			Question question=new Question();
			question.setQuestionId(rs.getInt(1));
			question.setQuestion(rs.getString(2));
			question.setAnswer(new Option());
			question.getAnswer().setOption(rs.getString(3));
			question.getAnswer().setImagePath(rs.getString(4));
			questionList.add(question);
			
			}
			connection.close();
		}
		 catch (Exception ex) {
            System.err.println(ex);
        }
		
		return questionList;
	}
	
	public ArrayList<Option> findOptions()
	{
		Connection connection = null;
		Statement statement = null;
		ArrayList<Option> optionList=new ArrayList<Option>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "root");
				statement = connection.createStatement();
			
			String sql;
			sql="SELECT * FROM questions";
			ResultSet rs=statement.executeQuery(sql);
			while (rs.next()) {
			Option option=new Option();
			option.setOption(rs.getString(3));
			option.setImagePath(rs.getString(4));
			optionList.add(option);
			
			}
			connection.close();
		}
		 catch (Exception ex) {
            System.err.println(ex);
        }
		
		return optionList;
	}
	
	
}