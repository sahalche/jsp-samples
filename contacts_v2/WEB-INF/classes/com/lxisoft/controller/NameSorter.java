package com.lxisoft.controller;

import java.util.*;
import com.lxisoft.model.*;

public class NameSorter implements Comparator<Contact> 
{
	
	public int compare(Contact contact1,Contact contact2)
	{

		return contact1.getName().compareTo(contact2.getName());
	}

}