<%@ page import="java.util.*" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
<% 

String x=request.getParameter("lang");
Locale locale1;
ResourceBundle resource ;
InputStream stream = null;
if(x==null || (Integer.parseInt(x)==1) )
{
	locale1=new Locale("en","US");
	Locale.setDefault(locale1);
	out.println("Current Locale 1: " + Locale.getDefault());
	resource = ResourceBundle.getBundle("label");
	out.println(resource.getString("hello"));
}  
else
{
	locale1=new Locale("ml","KL");
	Locale.setDefault(locale1);
	out.println("Current Locale 2: " + Locale.getDefault());
	resource = ResourceBundle.getBundle("label");
	out.println(resource.getString("hello"));
	
}
%>
<br>നമ 
</body>
</html>
