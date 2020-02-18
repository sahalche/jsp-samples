import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class ContactServ extends HttpServlet{
public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
	response.setContentType("text/html");
PrintWriter pw=response.getWriter();
String name=request.getParameter("name");
pw.println("Hello World Servlet and tHe parameter is "+name);
}}
