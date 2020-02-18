package com.lxisoft.interns.admin;
import com.lxisoft.interns.question.Question;

public class Admin
{
	public Question[] q=new Question[5];
	
	public void quiz(){
		
	
	for(int i=0;i<5;i++)
	{
		q[i]=new Question();
	}
	
	q[0].question="Which is the largest animal in the world";
	q[0].a.option1="Blue Whale";
	q[0].a.option2="Elephant";
	q[0].a.option3="Giraffe";
	q[0].a.option4="Tiger";
	q[0].a.answer="a";
	
	
	q[1].question="Java is a ......... Oriented Language";
	q[1].a.option1="Function";
	q[1].a.option2="Logic";
	q[1].a.option3="Procedure";
	q[1].a.option4="Object";
	q[1].a.answer="d";
	
	
	q[2].question=" What is TRojan";
	q[2].a.option1="Virus";
	q[2].a.option2="Malware";
	q[2].a.option3="Worm";
	q[2].a.option4="Spyware";
    q[2].a.answer="b";
	
	q[3].question="First President of India";
	q[3].a.option1="Rajendra Prasad";
	q[3].a.option2="Jawahar lal Nehru";
	q[3].a.option3="Sardar Vallabai Patel";
	q[3].a.option4="EMS Namboodiri Padu";
	q[3].a.answer="a";
	
	
	q[4].question="Abbreviation for RAM";
    q[4].a.option1="Read All Memmory";
    q[4].a.option2="Read After Memmory";
    q[4].a.option3="Random Access Memmory";
    q[4].a.option4="Random Array of Memmory";
    q[4].a.answer="c";
	
	}
	public String qst(int j){	
	return q[j].question;
	}
	public String opt1(int j){
		return q[j].a.option1;
	}
	public String opt2(int j){
		return q[j].a.option2;
	}
	public String opt3(int j){
		return q[j].a.option3;
	}
	public String opt4(int j){
		return q[j].a.option4;
	}
	public int check(String s,int j)
	{
		if(s.compareTo(q[j].a.answer)==0)
		{
			return 1;
		}
		else 
		{
			return 0;
		}
	}
	
	
	
	

}
	

	