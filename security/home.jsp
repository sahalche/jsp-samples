<%@ page import="com.*" %>
<html>
<body>
<%
User user=(User)session.getAttribute("user");
if((user)==null)
{
	response.sendRedirect("index.jsp");
	
}
else
{
	
	out.println("Welcome "+user.userName);
}

%>
<br>
<form action= "logout.jsp" method >
  <input type="submit" value="Log out" ">
</form>

</body>
</html>