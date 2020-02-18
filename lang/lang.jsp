<%@ page import = "java.io.*,java.util.Locale" %>
<%@ page import = "javax.servlet.*,javax.servlet.http.* "%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
   // Set response content type
   response.setContentType("text/html");
   
   // Set spanish language code.
   response.setHeader("Content-Language", "es");
   String title = "En Español";
%>

<html>
   <head>
      <title><%  out.print(title); %></title>
   </head>
   
   <body>
      <center>
         <h1><%  out.print(title);
			
		 %></h1>
      </center>
      
      <div align = "center">
         <p>En Español</p>
         <p>¡Hola Mundo!</p>
			<p>ഹലോ  വേൾഡ് &#x0D12; </p>
			
      </div>
   </body>
</html>