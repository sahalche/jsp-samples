import java.util.Scanner;
public class Tdd
{
	public static void main(String Args[])
	{
		User u1=new User();
		User u2=new User();
		u1.name="User 1";
		u2.name="User 2";
		u1.sum=1;
		
		u2.sum=1;
		
		Scanner s=new Scanner(System.in);
		int flag=0,d,c,a=0,b=0,user1=0,user2=0,flag1=0,flag2=0;
		
	
		
		
		
		while(flag<2)
		{
			System.out.println("\n\n\n");
			
			u1.display();
			System.out.println(u1.name+" : Enter 1 to throw dice of ");
			d=s.nextInt();
			if(d==1)
			{	
				if(flag1==0)
				{
					a=u1.gameStart();
					flag1=a;
				}
				else
				{	
				u1.sum=u1.gameWork(u1.sum);
				}	
			}							
				
				if(u1.sum==20)
				{
					System.out.println(u1.name+" wins");
					flag=2;
				}
				
				
			
				
			
			
			System.out.println("\n\n\n");
			
			
			u2.display();
			System.out.println(u2.name+" : Enter 1 to throw dice of "+u2.name);
			d=s.nextInt();
			if(d==1)
			{
				if(flag2==0)
				{	
					b=u2.gameStart();
					flag2=b;
				}	
				else
				{
				u2.sum=u2.gameWork(u2.sum);
				
				}	
			}		
			
			if(u2.sum==20)
				{
					System.out.println(u2.name+" wins");	
					flag=2;
				}
				
				
					
				
			
		}
		
	}	
	
}	