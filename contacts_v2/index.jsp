<!DOCTYPE html>
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\mystyle.css">
</head>
<body>

	<div class="jumbotron top">
	<img class="img-fluid contacts_icon" src="Images\contacts_2.png" alt="Contacts_icon">	
	<h2>Contacts</h2>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-8 search_contact_box">
			<form action="search_result.jsp" method="GET">
				<input type="search" placeholder="Search...." name="name">
			</form>
	</div> 
	<div class="col-sm-4 text-center">
	<span title="Add to contact"><a href="create_contact.jsp" title="Add to contact"><img src="Images\add_contact_1.png" alt="Create new contact"  title="">
	</a></span>
	</div>
	</div> 

	<!--<img src="add-512.png" alt="Mountain View">-->

	<div class="contact_container">
			<%@page import="com.lxisoft.controller.*,java.util.*,com.lxisoft.model.Contact,com.lxisoft.utility.PageNavigator"%>
		<%

			String pageNo=request.getParameter("link");

			if(pageNo!=null)
				PageNavigator.setCurrentPageNo(Integer.parseInt(pageNo));

			if((ContactController.isSetCreated())==false)
			{
				ContactController.initializeContactSet();
			}
			
			int currentPageNo=PageNavigator.getCurrentPageNo();
			int lastPageNo=PageNavigator.getLastPageNo();

			List<Contact> contactList=new ArrayList<Contact>(new TreeSet<Contact>(ContactController.getContactSet()));

			Set<Contact> contactSet=new TreeSet<Contact>();

			if(currentPageNo!=lastPageNo || ((contactList.size())%5)==0)
			{
			for (int i=(currentPageNo-1)*5;i<currentPageNo+4 ;i++ ) {
				
					contactSet.add(contactList.get(i));
			}
			}

			else
			{
				for (int i=(currentPageNo-1)*5;i<(((currentPageNo-1)*5)+((contactList.size())%5)) ;i++ ) {
				
					contactSet.add(contactList.get(i));
			}	
			}

			for(Contact contact:contactSet)
			{%>
			<div class="row individual_contact_row">
			<div class="col-sm-8 individual_contact">
			<img class="individual_contact_icon" src="Images\contact_1.png" alt="contact_picture"><p><a href="contact_details.jsp?link=<%out.println(contact.getPhNo());%>"><% out.println(contact); %></a></p>
			</div>
			<div class="col-sm-4 text-center">
				<a href="edit_contact.jsp?link=<%out.println(contact.getPhNo());%>"><span title="Edit"><img class="align" src="Images\edit_1.png" title=""></span></a>
				<a href="confirmation.jsp?link=<%out.println(contact.getPhNo());%>"><span title="Delete"><img class="align" src="Images\delete_3.png" title=""></span></a>
			</div>
			</div> 
		<%}%>
		<div class="text-center">
			<ul class="my-pagination">
			
			<%if((currentPageNo>=1) && (lastPageNo!=1)){%>
			<%if(currentPageNo!=1){%>
			<li><a href="index.jsp?link=<%out.println(currentPageNo-1);%>"><</a></li><%}%>
			<%if(currentPageNo!=1){%>
			<li><a href="index.jsp?link=1">1</a></li><%}%>
			<%if((currentPageNo-2)>=3){%>
			<li>..</li><%}%>
			<%if((currentPageNo-2)>1){%>
			<li><a href="index.jsp?link=<%out.println(currentPageNo-2);%>"><%out.println(currentPageNo-2);%></a></li><%}%>
			<%if((currentPageNo-1)>1){%>
			<li><a href="index.jsp?link=<%out.println(currentPageNo-1);%>"><%out.println(currentPageNo-1);%></a></li><%}%>
			<li><a class="active" href="index.jsp?link=<%out.println(currentPageNo);%>"><%out.println(currentPageNo);%></a></li>
			<%if((currentPageNo+1)<=lastPageNo){%>
			<li><a href="index.jsp?link=<%out.println(currentPageNo+1);%>"><%out.println(currentPageNo+1);%></a></li><%}%>
			<%if((currentPageNo+2)<=lastPageNo){%>
			<li><a href="index.jsp?link=<%out.println(currentPageNo+2);%>"><%out.println(currentPageNo+2);%></a></li><%}%>
			<%if((currentPageNo+2)<=lastPageNo){%>
			<li>..</li><%}%>
			<%if(currentPageNo!=lastPageNo){%>
			<li><a href="index.jsp?link=<%out.println(currentPageNo+1);%>">></a></li><%}%>
			<%}%>

		</ul>
		</div>
	</div>
	</div>
</body>
</html>                                                                                       