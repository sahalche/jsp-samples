import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class Contact extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{
	response.setContentType("text/html");
PrintWriter pw=response.getWriter();
String name=request.getParameter("name");
request.setAttribute("style",name);
RequestDispatcher view=request.getRequestDispatcher("contact.jsp");
view.forward(request,response);
}
}