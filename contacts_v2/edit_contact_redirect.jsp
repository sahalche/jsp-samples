
<!DOCTYPE html>
<html>
<head>
	<title>Edit contact redirect</title>
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
	
	<% 
	String name=request.getParameter("Name");
	String email=request.getParameter("Email");
	String phNo=request.getParameter("Phone_number");
	String place=request.getParameter("Place");

	/*List<Contact> contactList=ContactController.getContacts();
	Collections.sort(contactList);
	int i=Collections.binarySearch(contactList,new Contact(keyName,null,null,null)); */ 
	/*List<Contact> contactList=new ArrayList<Contact>(ContactController.getContacts());*/
	ContactController.editContact(new Contact(name,email,place,phNo));
	response.sendRedirect("index.jsp");%>

</body>