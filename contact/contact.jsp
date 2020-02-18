<html>
<%@ page import="java.util.*,java.io.FileInputStream,java.io.*,com.Student" %>

<%
try{
String s=(String)request.getAttribute("style");

out.println("Complete COntacts");
Student ss=new Student();
ArrayList<Student> list=(ArrayList<Student>)request.getAttribute("students");

String tester=(String)request.getAttribute("test");

%>
<br>
<Table>
<tr>
<th>No</th>
<th>Id</th>
<th>Name</th>
<th>Age</th>
<th>Place</th>
<th>Image</th>
</tr>
<%
for(int i=0;i<list.size();i++)
{%>
<tr>
<td><%out.println(i);%></td>
<td><%out.println(list.get(i).id);%></td>
<td><%out.println(list.get(i).name);%></td>
<td><%out.println(list.get(i).age);%></td>
<td><%out.println(list.get(i).place);%></td>
<td><img src="data:image/jpg;base64,<%out.println(list.get(i).image); %>" width="50" height="50"/></td>





%>


</tr>
<%
}
%>
</table>
<%
}
catch(Exception e)
{
	out.println(e);
}%>
</html>