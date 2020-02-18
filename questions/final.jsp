<%@  page import="com.lxisoft.interns.admin.Admin" %>
<html>
<body>
<%
Admin ad1=new Admin();

%>
<center>

<h1>
Answer
</h1>
</center>
<br>
<br>
<%
ad1.quiz();

for(int j=0;j<5;j++)
{
	String a=(String)session.getAttribute("a"+j);
	int i=j;

if(a!=null){
int p =ad1.check(a,i);
if (p==1){
	out.println((i+1)+": Correct answer");
}
else{
	out.println((i+1)+": Incorrect answer. Correct Answer is "+);
}
}
%>
<br>
<%
}
%>
</body>
</html>