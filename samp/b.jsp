<!DOCTYPE HTML>
<html>
	<head>
		<title>Playgame</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<style> 
#question {
    border-radius: 25px;
    background:#8B4513 ;
    padding: 20px; 
    width: 100%;
    height: 5%;    
}
#option {
    border-radius: 8px;
    background: #73AD21;
    padding: 20px; 
    width: 30%;
    height: 10%;    
}

* {
    box-sizing: border-box;
}

.column {
    float: left;
    width: 25%;
    padding: 5px;
}

.row::after {
    content: "";
    clear: both;
    display: table;
}
</style>
	</head>
	<body>
	
	
			
			
	
	
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<span class="avatar"><img src="images/chest/chest.gif" alt="" /></span>
						<!-- Enter the question inside h1 tag -->
						<h1 id="question"><strong>Question is here</strong></h1>
						<!-- Enter the question inside h1 tag -->
						<br />
					</header>

				<!-- Main -->
					<section id="main">

						<!-- Thumbnails -->
							<%for(int i=0;i<12;i++){
								%>
								
								
								<%
								if(i%4==0){%>
								
								<div class="row"><%}%>
										<div class="column">
										<form action="gameServlet" method="post"><input type="hidden" name="choice" value="<%=i%>">
										<input type="image" src="images/chest/closed.png" alt="submit" onmouseover="this.src='images/chest/alarm copy.png'" onmouseout="this.src='images/chest/closed.png'" style="width:100%"  />
										</form>
										
									
									</div><%if(i%4==3){%></div>
										
							<%}%>
							<%}%>
									
									
								
							</section>

					

				
			</div>
		

	</body>
	

</html>