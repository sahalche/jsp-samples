<html>
<%@ page import="java.util.List,java.io.FileInputStream,java.io.*" %>

<%
try{
String s=(String)request.getAttribute("style");
OutputStream o = response.getOutputStream();
out.println("Five time iteration");
List list=(List)request.getAttribute("studentList");


%>

<br>
<%

for(int i=1;i<=5;i++){out.println(i+") "+s+"  "+list.get(i));%>
<% %>

<br><%}
}
catch(Exception e)
{
	out.println(e);
}%>
</html>