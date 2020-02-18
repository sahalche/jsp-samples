import java.util.Scanner;
public class SnakeLadder
{	
	int flag=0,d,a=0,b=0,flag1=0,flag2=0;
	User u1=new User();
	User u2=new User();	
	Scanner s=new Scanner(System.in);	
	public void display(String s1,String s2,int pos1,int pos2)
	{
			System.out.println("\t\t\t\tSNAKE AND LADDER\t\t\t\t\t");
			int num=10;			
			for(int j=9;j>=0;j--)
			{
				if((j%2)==0)
				{
					for(int i=0;i<10;i++)
					{
						if(((j*num)+i+(1))==pos1)
						{	
							System.out.print(s1);
						}
						if(((j*num)+i+(1))==pos2)
						{
							System.out.print(s2);
						}	
						if((j*num+i+(1))<=9)
						{
						
							System.out.print("0");
						}
						System.out.print(((j*num)+i+(1))+"\t");
					}
				}
				else if((j%2)!=0)
				{
					for(int i=9;i>=0;i--)
					{
						if(((j*num)+i+(1))==pos1)
						{	
							System.out.print(s1);
						}
						if(((j*num)+i+(1))==pos2)
						{
							System.out.print(s2);
						}	
						if((j*num+i+(1))<=9)
						{
						
							System.out.print("0");
						}
						System.out.print(((j*num)+i+(1))+"\t");
					}
				}
				
						
						System.out.println("\n\n");
			}
				System.out.println("User 1 : * \tUser 2 : x "); 
				System.out.println("SNAKES :: 92<----35\t77<----12\t63<----40\t50<----26\t25<----4");
				System.out.println("LADDER :: 9####30\t16####44\t40####88\t52####68\t61####95");		
	}	
	public void game()
	{ 	
		u1.name="User 1";
		u2.name="User 2";
		u1.sum=1;
		u2.sum=1;
		String s1="";
		String s2="";
		int pos1=0;
		int pos2=0;
		this.display(s1,s2,pos1,pos2);
		while(flag<2)
		{
			System.out.println(u1.name+" : Please enter 1 to throw dice ");
			d=s.nextInt();
			if(d==1)
			{	
				if(flag1==0)
				{
					a=u1.gameStart();
					flag1=a;
					if(a==1)
					{
						s1="*";
						pos1=a;
					}
				}
				else
				{	
				s1="*";
				u1.sum=u1.gameWork(u1.sum);
				pos1=u1.sum;
				}	
			}									
				if(u1.sum==100)
				{
					System.out.println(u1.name+" wins");
					flag=2;
					pos1=u1.sum;
					this.display(s1,s2,pos1,pos2);	
					break;
				}
			System.out.println("\n\n");	
			this.display(s1,s2,pos1,pos2);			
			System.out.println(u2.name+" : Please enter 1 to throw dice ");
			d=s.nextInt();
			if(d==1)
			{
				if(flag2==0)
				{	
					b=u2.gameStart();
					flag2=b;
					if(b==1)
					{
						s2="x";
						pos2=b;
					}
				}	
				else
				{
				s2="x";	
				u2.sum=u2.gameWork(u2.sum);
				pos2=u2.sum;
				}	
			}			
			if(u2.sum==100)
				{
					System.out.println(u2.name+" wins");	
					flag=2;
					pos2=u2.sum;
					this.display(s1,s2,pos1,pos2);	
					break;
				}							
			System.out.println("\n");			
			this.display(s1,s2,pos1,pos2);			
		}
	}	
}	
	
	