<%@ page import="java.sql.*"%>

<%
Connection con = null;
	        try {
	         Class.forName("org.hsqldb.jdbcDriver");
	         con = DriverManager.getConnection("jdbc:hsqldb:file:E:\\work\\apache-tomcat-7.0.72\\webapps\\db\\databases\\contact\\", "SA", "");
	        
	      
	      }  catch (Exception e) {
	         e.printStackTrace(System.out);
	      }
	      Statement stmt = con.createStatement();
		
			stmt.execute("CREATE TABLE  IF NOT EXISTS arun (name VARCHAR(50) , phone VARCHAR(20) ,email VARCHAR(50), PRIMARY KEY(phone))");
			
			if(request.getParameter("phone")!=null)
			{
		
            stmt.executeUpdate("INSERT INTO arun  VALUES('"+request.getParameter("name")+"',"+request.getParameter("phone")+",'"+request.getParameter("email")+"')");
			}


%>
<html>


  <body>
 	 <form action="Insert.jsp" style="width: 100%;" >

 	 <div style="position:absolute; left: 500; top:50; ">
 		   NAME <br><br>
    		PHONE-NUMBER<br><br>
    		EMAIL
  	</div>

	<div style="position: absolute; left: 700;	top:50;"> 
    <input type="text" name="name" ><br><br>
    <input type="text" name="phone"  ><br><br>
    <input type="text" name="email"></div> 
  
    <input type="button" onclick="window.location.href='Home.html'" value="HOME" style="position: absolute; top: 180;left: 650">
    <input type="SUBMIT" value="ADD"  style="position: absolute; top: 180;left: 750"> 
	</form>

  </body>
   

</html>