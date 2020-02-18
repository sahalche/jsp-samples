
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

	<% Set<Contact> contactSet=ContactController.getContactSet();
		Contact currentContact=ContactController.getCurrentContact();
 		String phNo=request.getParameter("link");
 			for (Contact contact: contactSet) {
 				if(phNo.equals(contact.getPhNo()))
 				{
 					currentContact=contact;
 					ContactController.setCurrentContact(contact);
 				}
 				
 			}%>
 	<div class="container">
 	<div class="row">
 	<div class="col-sm-2"></div>
 	<div class="col-sm-8 text-center">
 		<div class="dialog">Are you sure you want to delete?</div><br>
 		<a class="dialog-yes" href="delete_contact_redirect.jsp">yes</a>
 		<a class="dialog-no" href="index.jsp">no</a>	
 			
 	</div>
 	</div>
 	</div>

</body>
</html>