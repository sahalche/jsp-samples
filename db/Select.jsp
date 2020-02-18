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

  <head>
    <style type="text/css">
    table,tr,th,td{
             border: 1px solid;
      }
         input{
        position: absolute;
      }

    </style>
    
  </head>
      
      <body>
       <form  style="width: 100%;" >

     <div style="position:absolute; left: 400; top:50; ">
         SEARCH CONTACT BY NAME :<br><br>
         
      </div>

    <div style="position: absolute; left: 660;  top:50;"> 
      <input type="text" name="search" ><br><br>
      <input type="SUBMIT" value="SEARCH CONTACTS" style="position: absolute; top: 70;">
      <input type="button" onclick="window.location.href='Home.html'" value="HOME" style="position: absolute; top: 100;left:40">

  </div>
    </form>
     

  	  <table style="position: absolute;left: 400; top: 300;">
       	 <tr>
      <th>NAME</th>
      <th>PHONE</th> 
      <th>EMAIL ID</th>
   
    </tr>

     <%
     String ss =request.getParameter("search");
     if(ss!=null)
      {
        ResultSet s = stmt.executeQuery("SELECT * FROM arun WHERE name LIKE'"+request.getParameter("search")+"%'");
        while(s.next())
          {

      	%>
     <tr>
      <td><%=s.getString(1)%> </td>
      <td><%=s.getString(2)%> </td> 
      <td><%=s.getString(3)%> </td>
      <td><a id="del" href="Delete.jsp?phone=<%=(s.getString(2))%>">DELETE</a> </td>
      <td><a href="Update.jsp?phone=<%=(s.getString(2))%>">UPDATE</a> </td>


    </tr>

  <script type="text/javascript">
    function Delete()
    {
      var d = document.getElementById("del");
    }
  </script>
  	<%
  		}
    }
  	%>	

       </table>
    
      </body>

  </html>