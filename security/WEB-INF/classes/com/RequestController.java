package com;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;



public class RequestController extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		HttpSession session=request.getSession();
		String userName="admin";
		String password="admin";
		response.setContentType("text/html");
			User user=new User();
			user.userName=request.getParameter("username");
			user.password=request.getParameter("password");
		if(user.userName==null || user.password==null   )
		{
			System.out.println("something null");
			if(user.userName==null)
			{		response.sendRedirect("index.jsp?status=Username cannot be empty");
					System.out.println("null username");
			}
			if(user.password==null)
			{
				System.out.println("password null");
				response.sendRedirect("index.jsp?status=Pass word cannot be empty");
		}
		}
		else
			if(user.userName.equals(userName) && user.password.equals(password))
				{
					System.out.println("entering that real condition");
					session.setAttribute("user", user);
					response.sendRedirect("home.jsp");
				}
			if(user.userName.equals(userName) || (user.password.equals(password)))
			{
				System.out.println("some eror");
				if(user.userName.equals(userName) && (user.password.equals(password))==false )
				response.sendRedirect("index.jsp?status=password is incorrect");
		
				if(user.password.equals(password) && (user.userName.equals(userName))==false)
				response.sendRedirect("index.jsp?status=user name is not found");
			}
			else
			{
				System.out.println("entering that last");
					response.sendRedirect("index.jsp?status=user name or password is incorrect");
			}
		
		
		
		
	}
}