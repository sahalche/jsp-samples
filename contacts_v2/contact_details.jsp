<!DOCTYPE html>
<head>
	<title>Details</title>
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\mystyle.css">
	<meta charset="UTF-8">
</head>
<body>
	<%@ page import="java.util.*,com.lxisoft.controller.*,com.lxisoft.model.Contact"%>
	<%String phoneNo=request.getParameter("link");
	Set<Contact> contactSet=ContactController.getContactSet();
	//Collections.sort(contactList);
	//int i=Collections.binarySearch(contactList,new Contact(link,null,null,null));
	for (Contact contact: contactSet) {
	
		if((contact.getPhNo()).equals(phoneNo))
			ContactController.setCurrentContact(contact);
	}
	%>
	
	<div class="jumbotron top">
	<img class="img-fluid contacts_icon" src="Images\contacts_2.png" alt="Contacts_icon">	
	<h2>Contacts</h2>
	</div>
	<div class="container">
	<div class="row">
	<div class="col-sm-8">		
	</div>
	<div class="col-sm-4 text-center">
		<a href="edit_contact.jsp?link=<%out.println((ContactController.getCurrentContact()).getPhNo());%>"><span title="Edit contact"><img src="Images\edit_1.png" class="img-fluid contact_option_icons" title=""></span></a>
		<a href="confirmation.jsp?link=<%out.println((ContactController.getCurrentContact()).getPhNo());%>"><span title="Delete contact"><img src="Images\delete_3.png" class="img-fluid contact_option_icons" title=""></span></a>
		<a href="index.jsp"><span title="Back"><img src="Images\back_9.jpg" class="img-fluid contact_option_icons" title=""></span></a>
	</div>
	</div>
	<div class="row contact_detail_container">
	<div class="col-sm-1">
	</div>
	<div class="col-sm-5 contact_name">
			<img src="Images\contact_2.png"> 
			<p><%out.println(ContactController.getCurrentContact());%></p>
	</div>
	<div class="col-sm-5 contact_information text-center">
			<ul>
				<li><%out.println((ContactController.getCurrentContact()).getPlace());%></li>
				<li><%out.println((ContactController.getCurrentContact()).getPhNo());%></li>
				<li><%out.println((ContactController.getCurrentContact()).getEmail());%></li>
			</ul>
		</div>
	</div>
	</div> 
</body>
</html>