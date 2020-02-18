public class User
{
	int flag=0,b=0,dice,d,start=1,flag1=0;
	String name;
	int sum;
	public int random()
	{
		int a;
		do
		{
			a=(int)(Math.random()*10)%6;
		}
		while(a==0);
		return a;
	}
	public int gameStart( )
	{	
		int dice=this.random();
		System.out.println("Thrown value :"+dice+"");
		if(dice==1)
		{
			System.out.println("wow you start the game");
			return 1;
		}
		else
		{
			System.out.println("please try next time");
			return 0;
		}	
	}		
	public int gameWork(int a)
	{	
			System.out.println("before postion :"+a);
			int ran=this.random();
			System.out.println("thrown Value :"+ran);
			if(a+ran>100)
			{
				System.out.println("it is above last postion please try once more");
				return a;
			}
			a=a+ran;			
			if(a==92 || a==77 || a==63 || a==50 || a==25)
			{
				System.out.println("Bad luck bro.....Snake trap alert in "+a);
				if(a==92)
				{
					a=35;
					System.out.println("downwards to "+a);			
				}
				else if(a==77)
				{
					a=12;
					System.out.println("downwards to "+a);
				}
				else if(a==63)
				{
					a=40;
					System.out.println("downwards to "+a);
				}
				else if(a==50)
				{
					a=26;
					System.out.println("downwards to "+a);
				}
				else if(a==25)
				{
					a=4;
					System.out.println("downwards to "+a);
				}
			}			
			if(a==9 || a==16 || a==40 || a==52 || a==61 )
			{
				System.out.println("Congratz...ladder bonus in "+a);
				if(a==9)
				{					
					a=30;
					System.out.println("upwards to "+a);
				}
				else if(a==16)
				{
					a=44;
					System.out.println("upwards to "+a);
				}
				else if(a==40)
				{
					a=88;
					System.out.println("upwards to "+a);
				}
				else if(a==52)
				{
					a=68;
					System.out.println("upwards to "+a);
				}
				else if(a==61)
				{
					a=95;
					System.out.println("upwards to "+a);
				}
			}
			System.out.println("Now postion :"+a);
			return a;
	}				
}



