import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

import java.io.FileInputStream;
import java.io.OutputStream;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Contact extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
	response.setContentType("text/html");
PrintWriter pw=response.getWriter();
String name=request.getParameter("name");
String age=request.getParameter("age");

String place=request.getParameter("place");
String image=request.getParameter("image");
String imageLocation=getServletContext().getRealPath(image);
Student s=new Student();
s.id=1;
s.name=name;
s.age=Integer.parseInt(age);
s.place=place;
s.fis=new FileInputStream(new File(imageLocation));
saveStudent(s);
request.setAttribute("style",name);
request.setAttribute("images",s.fis);
RequestDispatcher view=request.getRequestDispatcher("contact.jsp");
view.forward(request,response);
}
Connection connection = null;
	Statement st = null;
	
	public void dataBaseConnectionEstablish() {
		if (connection == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts", "root", "root");
				st = connection.createStatement();
			} catch (Exception e) {
				System.out.println("dataBaseConnectionEstablish exception");
			}
		}
	}

public  void saveStudent(Student student)
{
	try {
			dataBaseConnectionEstablish();
			String sql = "INSERT INTO students (name,age,place,image) values (?, ?, ?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
		//statement.setInt(1, 1);	
			statement.setString(1, student.name);
			statement.setInt(2,student.age );
			System.out.println("sql exception not occured: middle");
            statement.setString(3,student.place );
			statement.setBinaryStream(4,student.fis);
			System.out.println("sql exception not occured last befoe");
			statement.executeUpdate();	
			System.out.println("atlast exception not occured");
	}
	catch (Exception e) {
		System.out.println("save student exception occured");
			e.printStackTrace();
			
		}
}








} 
class Student
{
	int id;
	String name;
	int age;
	String place;
	FileInputStream fis;
	
}