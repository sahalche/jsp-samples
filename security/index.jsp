<%@ page import="com.*" %>
<html>
<body>


<%

User user=(User)session.getAttribute("user");
if((user)!=null)
{
	response.sendRedirect("home.jsp");
}
%>
<form action="controller" method="post">
<% out.println("User Name"); %>
<input type="text" name="username">
<br>
<% out.println("Password");%>
<input type="password" name="password">
<br>
<% String status=request.getParameter("status");





%>
<br>
<input type="submit" value="Sign in">
</form>
<%if(status!=null) out.println(status);%>
</body>
</html>
 