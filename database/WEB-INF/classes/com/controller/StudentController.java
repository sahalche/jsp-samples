package com.controller;
import com.model.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
 
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import org.apache.log4j.Logger;



public class StudentController extends HttpServlet
{
	static Logger log = Logger.getLogger(StudentController.class.getName());
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		log.debug("working post method");
      log.info("working post method");
		System.out.println("working post method");
		int id=Integer.valueOf(request.getParameter("id"));
		int age=Integer.valueOf(request.getParameter("age"));
		String name=request.getParameter("name");
		String place=request.getParameter("place");
		 try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/StudentsDB");
            Connection conn = ds.getConnection();
             
			  String sql = "INSERT INTO studentDetails (id,name,age,place) values (?, ?, ?,?)";
           PreparedStatement stmt=conn.prepareStatement(sql);  
           stmt.setInt(1,id);
		   stmt.setString(2,name);
		   stmt.setInt(3,age);
		   stmt.setString(4,place);
            
			stmt.executeUpdate();
		 
		 conn.close();
		 
		  } catch (NamingException ex) {
            System.err.println(ex);
        } catch (SQLException ex) {
            System.err.println(ex);
        }
		
		
	}
}
