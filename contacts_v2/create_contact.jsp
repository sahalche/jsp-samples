<!DOCTYPE html>
<html>
<head>
	<title>Create contact</title>
	<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css\mystyle.css">
	<meta charset="UTF-8">
</head>
<body>
	<div class="jumbotron top">
	<img class="img-fluid contacts_icon" src="Images\contacts_2.png" alt="Contacts_icon">	
	<h2>Contacts</h2>
	</div>
	<div class="container text-center">
	<div class="row">
	<div class="col-sm-2">
	</div>
	<form id="form1" class="form-horizontal form_style col-sm-8" action="create_contact_redirect.jsp" method="GET">
		<label class="col-sm-3">Name</label>
		<input class="col-sm-5" type="text" name="Name"  pattern="[^,]+" required=""><br>
		<label class="col-sm-3">Email&nbsp;</label>
		<input class="col-sm-5" type="email" name="Email" checked="checked" pattern="[^,]+" required="" value="              @lxisoft.com"><br>
		<label class="col-sm-3">Phone number</label>
		<input class="col-sm-5" type="tel" name="Phone_number" pattern="[6789][0-9]{9}" required="" placeholder="+91"><br>
		<label class="col-sm-3">Place&nbsp;</label>
		<input class="col-sm-5" type="text" name="Place" pattern="[^,]+" required=""><br><br>
		<input type="submit" value="Add contact">
	</form>
	</div>
	</div>	
</body>
</html>							 