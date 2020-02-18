
<!DOCTYPE html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\mystyle.css">
	<meta charset="UTF-8">
</head>
<body>
	<div class="jumbotron top">
	<img class="img-fluid contacts_icon" src="Images\contacts_2.png" alt="Contacts_icon">	
	<h2>Contacts</h2>
	</div>
	<%@ page import="com.lxisoft.controller.*,java.util.*,com.lxisoft.model.Contact"%>

	<% ContactController.deleteContact();
	response.sendRedirect("index.jsp");%>
	

</body>
</html>