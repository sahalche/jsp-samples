package com.lxisoft.model;

import java.util.*;

public class Contact implements Comparable<Contact>
{
	
	private String name,place,phNo,email;

	public Contact(String name,String email,String place,String phNo)
	{

		this.name=name;
		this.email=email;
		this.phNo=phNo;
		this.place=place;

	}

	public int compareTo(Contact contact)
	{
		return this.name.compareToIgnoreCase(contact.name);
	}
	public boolean equals(Object contact)
	{
		
		if(this.phNo==((Contact)contact).phNo)
			return true;
		else
			return false;
	}

/*	public void showContactDetails()
	{

		System.out.print("\t"+name+"\t  "+place+"\t  "+phNo+"\n\n");

	}*/

/*	public int compareTo(Contact secondContact)
	{
     return this.name.compareTo(secondContact.getname());
	}*/
	public void setName(String name)
	{

		this.name=name;

	}

	public void setPlace(String place)
	{

		this.place=place;

	}

	public void setPhNo(String phNo)
	{

		this.phNo=phNo;

	}
	public void setEmail(String email)
	{
		this.email=email;
	}
	public String getName()
	{
      
      return this.name;
     }
     
    public String getPlace()
	{
      
      return this.place;

	}

	public String getPhNo()
	{
		
		return this.phNo;

	}
	public String getEmail()
	{
		return this.email;
	}

	public String toString()
	{

		return (this.name);
		
	}
}