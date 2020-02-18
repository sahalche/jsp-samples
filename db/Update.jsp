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
    
      stmt.execute("CREATE TABLE  IF NOT EXISTS arun (name VARCHAR(50) , phone VARCHAR(20) ,email VARCHAR(50),PRIMARY KEY (phone))");

  %>

 		
<html>
<title>UPDATE</title>

<body>
  
  <form action="Update.jsp"  >

 	 <div style="position:absolute; left: 500; top:50; ">
 		   NAME <br><br>
    		PHONE-NUMBER<br><br>
    		EMAIL
  	</div>

	<div style="position: absolute; left: 700;	top:50;"> 
	 <input id="names" type="text"  name="name"  ><br><br>
    <input id="phonenum" type="text" name="phone" readonly ><br><br>
    <input id="emailid" type="text" name="email"  ></div> 
	<%
    
        ResultSet s = stmt.executeQuery("SELECT * FROM arun WHERE phone='"+request.getParameter("phone")+"'");
        while(s.next())
          {

      	%>
      	<script type="text/javascript">
      		document.getElementById("names").value="<%=s.getString(1)%>";
      		document.getElementById("phonenum").value="<%=s.getString(2)%>";
      		document.getElementById("emailid").value="<%=s.getString(3)%>";

      	</script>
   
	 <%}%>
    <input type="SUBMIT" name="button" value="CONFIRM"  style="position: absolute; top: 180;left: 750"   > 
 <input type="button" onclick="window.location.href='Home.html'" name="button" value="HOME"  style="position: absolute; top: 180;left: 650"> 

	<%
		String act = request.getParameter("button");

		if(act!=null)
		{
			 stmt.executeQuery(" UPDATE arun SET name='"+request.getParameter("name")+"',email='"+request.getParameter("email")+"'WHERE phone='"+request.getParameter("phone")+"'");
		
       %>
        <script type="text/javascript">
			document.getElementById("names").value="";
      		document.getElementById("phonenum").value="";
      		document.getElementById("emailid").value="";

			</script>

        
        
       <%}%>


	</form>
	

 

</body>



</html>