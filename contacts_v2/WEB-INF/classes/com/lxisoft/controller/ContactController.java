package com.lxisoft.controller;

import com.lxisoft.model.Contact;
//import com.lxisoft.view.*;
import java.util.*;
import com.lxisoft.utility.*;
import java.util.regex.*;


public class ContactController
{

	private static SortedSet<Contact> contactSet;
	private static boolean isSetCreated=false;
	private static Contact currentContact;
	private static FileUtility fu=new FileUtility();
	private static int i=0;

	public static void initializeContactSet()
	{

		contactSet=new TreeSet<Contact>(fu.readFromFile());

		isSetCreated=true;

/*		MenuShower ms=new MenuShower();
l
		ms.listContacts(contactList);*/
		          
	}

/*	public static List<Contact> getContactList()
	{
		return contactList;
	}*/

	public static Set<Contact> getContactSet()
	{
		return contactSet;
	}

	public static void createContact(Contact contact)
	{
		System.out.println("method createContact() is called to create..."+contact+currentContact);
		boolean b=contactSet.add(contact);
		//System.out.println(contactSet);
   		System.out.println(b);
   		fu.writeToFile(contactSet);
   		System.out.println("create.."+(i++));

	}

	public static boolean isSetCreated()
	{
		return isSetCreated;
	}
	public static void editContact(Contact contact)
	{
		deleteContact();
		createContact(contact);
	}
/*	public static void setCurrentIndex(int index)
	{
		currentIndex=index;
	}*/
/*	public static int getCurrentIndex()
	{
		return currentIndex;
	}*/
	public static void setCurrentContact(Contact contact)
	{
		currentContact=contact;
		//System.out.println("current contact"+currentContact);
	}
	public static Contact getCurrentContact()
	{
		
		return currentContact;

	}
	public static void deleteContact()
	{
		contactSet.remove(currentContact);
		fu.writeToFile(contactSet);
	}
	public static Set<Contact> searchName(String keyName)
	{

		Pattern p =null;

		Matcher m =null;

  		Set<Contact> resultSet=new TreeSet<Contact>();

     	p = Pattern.compile(keyName,Pattern.CASE_INSENSITIVE); // the expression

     	for(Contact contact:contactSet)
     	{

      		m = p.matcher(contact.getName()); 

      		while(m.find() && m.start()==0)
      		{
        		
        		resultSet.add(contact);

      		}
      
    	}
     
     return  resultSet;

	}
} 