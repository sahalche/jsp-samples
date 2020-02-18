<!DOCTYPE html>
 <!--
      This page is about the homepage of facebook app
      @author:silpa
      @version:1.0
	  @copy write
--> 

<html lang="en">
<head>
  <link rel = "stylesheet" type = "text/css" href = "sample.css"/>
  <meta charset = "UTF-8">
 
  <title align = "center">Home Page</title>
 
</head>
<style>
  body{
	  background-image:url("pic.jpg");
	  background-size: cover;
  }
  .oblique{
	  font-style:oblique;
	  color:blue;
  }
  .button{
	  background-color:cornflowerBlue;
	  color:white;
	  border:none;
	  padding:10px 15px;
	  text-align:center;
	  font-size:15px;
  }
</style>

<body>
   
   <h1 align = "center" class = "oblique">WELCOME USER!!!!!!!</h1>
   
   <div id = "division"></div>
   
   <div id = "center" align = "center">
   <p>
   
   
   <div id = "sub" align = "center">
  </br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
  
  <%@ page import= "com.*"%>

  <%@ page import="java.util.ArrayList"%>
  
  
  <h2></h2>
  <% 	 	
    int count = Integer.parseInt(request.getParameter("count"));
	if(count==0)
	{
	    session.setAttribute("answer",new ArrayList<QuizResult>());
	} 
	ArrayList<Question> questionList =(ArrayList<Question>)session.getAttribute("questions");
	if(questionList!=null)
	{							
		if(count<3)
		{
  %>		<form action ="HomePage.jsp" method = "get">
			<input type ="hidden" name="count" value="<%=count+1%>" >			
			<h1><%out.println((count+1)+".");%><%out.println(questionList.get(count).getQuestionName());%></h1>
			<h1>&nbsp</h1>
			<input type ="radio" class = "button" name = "option" value = "<%=questionList.get(count).getOption1()%>" checked ><%out.println(questionList.get(count).getOption1());%></br>
			<input type ="radio" class = "button" name = "option" value = "<%=questionList.get(count).getOption2()%>" ><%out.println(questionList.get(count).getOption2());%></br>
			<input type ="radio" class = "button" name = "option" value = "<%=questionList.get(count).getOption3()%>" >
			<%out.println(questionList.get(count).getOption3());%></br>
			<input type ="submit" value = "submit Answer"/>
			</br>
   <%
			String choice = request.getParameter("option");
			if(choice!=null)
			{
				ArrayList<QuizResult> quizResultList=(ArrayList<QuizResult>)session.getAttribute("answer");
				quizResultList.add(new QuizResult(questionList.get(count-1),choice));
				session.setAttribute("answer",quizResultList);
			}
		}	
		if(count>=3)
		{%>	
			<form action ="question" method = "post">
			<input type ="submit" value = "Generate Answer"/>
	<%	
			String choice = request.getParameter("option");
			if(choice!=null)
			{
				ArrayList<QuizResult> quizResultList=(ArrayList<QuizResult>)session.getAttribute("answer");
				quizResultList.add(new QuizResult(questionList.get(count-1),choice));
				session.setAttribute("answer",quizResultList);
				ArrayList<QuizResult> quizResultLists=(ArrayList<QuizResult>)session.getAttribute("answer");
			}		
	%>
   </form>
<%		}
	}%>
	
    </div >
    </p>
    </div>
	
	

</body>
</html>