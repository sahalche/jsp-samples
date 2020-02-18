
 <%@  page import="com.lxisoft.interns.admin.Admin" %>
<%
String b=request.getParameter("id");
int c=Integer.parseInt(b);
%>
<html><
body>

<h1>Quiz</h1>
<br>
<br>
<br><br>
<%
Admin ad=new Admin();
String qst,opt1,opt2,opt3,opt4,answer;
int i=c;

if(c==5)
{
	

String a=request.getParameter("option");
session.setAttribute("a"+(c-1),a);

%>
<script> window.location="final.jsp"</script>
	
	<%
}
%>
<%
if (c<5) {
	%>
	
<form action="questionDisplay.jsp">
<input type="hidden" name="id" value=<%out.print(c+1);%>>
<%
%>


<%
ad.quiz();
qst=ad.qst(i);
%>
Question <% out.println(i+1);%> :<%out.println(qst); %><br><%
opt1=ad.opt1(i);
%>A : <% out.println(opt1);%><input type="Radio" name="option" value="a">
<br><%
opt2=ad.opt2(i);
%>B : <% out.println(opt2);%><input type="Radio" name="option" value="b">
<br><%
opt3=ad.opt3(i);
%>C : <% out.println(opt3);%><input type="Radio" name="option" value="c">
<br><%
opt4=ad.opt4(i);
%>D : <% out.println(opt4);%><input type="Radio" name="option" value="d">
<br>
<br>
Answer  





<input type="submit" value="submit">
<%
}
String a=request.getParameter("option");
session.setAttribute("a"+(c-1),a);
%>
</form>
<br>


 


<br><br>
</body>
</html>