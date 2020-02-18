package com.lxisoft.utility;

import com.lxisoft.controller.ContactController;

public class PageNavigator
{
	
	private static int lastPageNo,currentPageNo=1;

	public static int getLastPageNo()
	{

		int size=(ContactController.getContactSet()).size();
		if(size%5==0)
			return (size/5);
		else
			return (size/5)+1;
	
	}
	public static int getCurrentPageNo()
	{

		return currentPageNo;

	}
	public static void setCurrentPageNo(int pageNo)
	{

		currentPageNo=pageNo;

	}	

}