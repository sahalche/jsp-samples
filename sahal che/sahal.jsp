<html>
<body>
<center><h1>Sign In</h1><br>
<form action="">
<table><tr>
<td>Name </td> <td><input type="text" name="t1" >
</input></td></tr>
<td>
College Name</td> <td><input type="text" name="t2" ></input></td></tr>
</table>

<% for (int i=0; i<5; i++) { %> 
      <br>*************  
<%}%>


<br><input type="submit" ></input>
</form>
<table><tr><td>
<% String text1=request.getParameter("t1");
out.println("Your name is "+text1);
%>
</tr></td>
<br>
<tr><td>
<%
String text2=request.getParameter("t2");
out.println("Your college is "+text2);
%>
</td></tr>
</table>
</center>
</body>
</html>