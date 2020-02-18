<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<title>INTRO PAGE</title>
</head>
<body style="background-color:lightgreen">
<form  action="http://localhost:8080/">
    
    
<div style="position: absolute; left:250px; top:100px;">
    ENTER EMPLOYEE NAME : <input type="text" name="search" >

    <input type="submit" name="submit">
    </div>
        </form>
    
    
    SELECT ANY EMPLOYEE:
     <select onchange="javascript:handleSelect(this)">
         <%  
	   try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
			Statement stmt=con.createStatement();
			ResultSet set=stmt.executeQuery("select name from employee");
			
			while (set.next()) {
				%>
        
                <option><%=set.getString(1)%></option>
    <%       
		}
	       con.close();
			
		}catch(Exception e){
			out.print(e);
			
		}
			
	
		
	%>
     </select>   
        
<script type="text/javascript">
    
    function handleSelect(elm)
    {
        window.location = "http://localhost:8080/?search="+elm.value;
    }
</script>


</body>
</html>