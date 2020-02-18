<html>
<%@ page import="com.lxisoft.jdbc.*" %>
<body>
<h2>Hello World!</h2>
	
	<%
	JdbcTest jdbc=new JdbcTest();
	jdbc.jdbcCrudOperation();
	out.println("success");
	
	
	
	
	%>

</body>
</html>
