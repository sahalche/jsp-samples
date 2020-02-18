<html>

<%	String s=(String)request.getAttribute("style");
out.println("Five time iteration");%>
<br>
<%
for(int i=1;i<=5;i++){out.println(i+") "+s);%><br><%}%>
</html>