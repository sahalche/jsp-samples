<html><body>
<h1> File Upload</h1>

<form action="file" method="get">
image :<input type="file" name="image" enctype="multipart/form-data"><br>
<input type="submit" value="login">
</form>
<img src="<%=request.getParameter("image")%>">
</body>
</html>