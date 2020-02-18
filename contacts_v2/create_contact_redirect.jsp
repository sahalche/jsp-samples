<!DOCTYPE html>
<html>
<head>
	<title>Create contact redirect</title>
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\mystyle.css">
	<meta charset="UTF-8">
</head>
<body>
	<div id="top">
	<img id="contacts_icon" src="Images\contacts_2.png" alt="Contacts_icon">	
	<h2>Contacts</h2>
	</div>
	<%@ page import="com.lxisoft.controller.*,java.util.*,com.lxisoft.model.Contact"%>
	
	<% String name=request.getParameter("Name");
	String email=request.getParameter("Email");
	String phNo=request.getParameter("Phone_number");
	String place=request.getParameter("Place");
	/*List<Contact> contactList=new ArrayList<Contact>(ContactController.getContacts());*/
	ContactController.createContact(new Contact(name,email,place,phNo));
	response.sendRedirect("index.jsp");%>

</body>