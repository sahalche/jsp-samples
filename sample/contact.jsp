<html>
<%@ page import="java.util.List,java.io.FileInputStream,java.io.*" %>

<%
String s=(String)request.getAttribute("style");
FileInputStream f=(FileInputStream)request.getAttribute("images");
ObjectInputStream o=new ObjectInputStream(f);
File file=(File)o.readObject();
out.println("Five time iteration");

%>

<br>
<%
for(int i=1;i<=5;i++){out.println(i+") "+s+file);%>

<img src="<%=request.getParameter("images")%>">
<br><%}%>
</html>