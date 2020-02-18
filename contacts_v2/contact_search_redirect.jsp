<!DOCTYPE html>
<html>
<head>
	<title>Search contact redirect</title>
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\mystyle.css">
	<meta charset="UTF-8">
</head>
<body>
	<div class="jumbotron top">
	<img class="img-fluid contacts_icon" src="Images\contacts_2.png" alt="Contacts_icon">	
	<h2>Contacts</h2>
	</div>
	<%@ page import="java.util.*,com.lxisoft.model.Contact,com.lxisoft.controller.*"%>
	<%String name=request.getParameter("name");
	List<Contact> contactList=ContactController.getContacts();
	//Collections.sort(contactList);
	//int i=Collections.binarySearch(contactList,new Contact(name,null,null,null));
	int i=ContactController.searchName(name);
	if(i>=0)
	{
		ContactController.setCurrentIndex(i);
		response.sendRedirect("search_result.jsp");
	}
	else
	{%>
		<div class="container">
		<div class="row">
		<div class="col-sm-2">
		</div>
		<div class="col-sm-8">
		<p class="text-info error-message">Sorry...no contact could not be found</p>
		</div>
		</div>
		</div>
		<%//Thread.sleep(10000);
		//response.sendRedirect("index.jsp");
		response.setHeader("Refresh", "3;url=index.jsp");
	}%>
</body>