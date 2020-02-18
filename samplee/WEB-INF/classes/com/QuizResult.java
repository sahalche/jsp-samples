package com;

public class QuizResult
{

  private Question question;
  private String choice;
  
  public QuizResult(Question question,String choice)
  {
	  this.question = question;
	  this.choice = choice;
  }
  
  public void setQuestion(Question question)
  {
	  this.question = question;
  }
  public Question getQuestion()
  {
	  return question;
  }
  public void setChoice(String choice)
  {
	  this.choice = choice;
  }
  public String getChoice()
  {
	  return choice;
  }
  
  
}
