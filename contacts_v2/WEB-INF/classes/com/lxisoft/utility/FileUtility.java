package com.lxisoft.utility;

import java.io.*;
import java.util.*;
import com.lxisoft.model.Contact;

public class FileUtility
{
	
  private Set<Contact> contactSet  = new TreeSet<Contact>();
  private File file;
  private File fileDirectory;
 
  public Set<Contact> readFromFile()
  {

    fileDirectory=new File("G:/Softwares/lxi softwares/apache-tomcat-7.0.72/webapps/contacts_v2/data");
    if(fileDirectory.exists()==false)
      fileDirectory.mkdir(); 
    file=new File(fileDirectory,"contacts.csv");

    FileReader fr; 
    BufferedReader br; 

    try{

      if(file.exists()==false)
        file.createNewFile();

      fr= new FileReader(file);
      br= new BufferedReader(fr);
    
		  String[] tokens;
		  String readBuffer;
      
			while((readBuffer=br.readLine())!=null)
			{

			 tokens=readBuffer.split(",");
				/*System.out.println(a);*/
				contactSet.add(new Contact(tokens[0],tokens[1],tokens[2],tokens[3]));
			
      }

		  br.close();
    }
    catch(IOException e)
    {

    }
	 return contactSet;
 }  

 public void writeToFile(Set<Contact> contactSet)
 {
 	
    FileWriter fw;
    BufferedWriter bw;

    this.contactSet=contactSet;

    fileDirectory=new File("G:/Softwares/lxi softwares/apache-tomcat-7.0.72/webapps/contacts_v2/data");
    if(fileDirectory.exists()==false)
      System.out.println("directory status in write to file  "+fileDirectory.mkdir()+" "+fileDirectory.exists());
    file=new File(fileDirectory,"contacts.csv");

  try
  {
    if(file.exists()==false)
        System.out.println("File status in write ti file.."+file.createNewFile());
    fw = new FileWriter(file);
    bw = new BufferedWriter(fw);

    int i=0;
    for(Contact contact:contactSet)
    {
   	  bw.append(contact.getName());
   	  bw.append(",");
      bw.append(contact.getEmail());
   	  bw.append(",");
      bw.append(contact.getPlace());
      bw.append(",");
   	  bw.append(contact.getPhNo());
    	if((i++)!=(contactSet.size()-1))
     		bw.newLine();  	
    }

    bw.flush();
    bw.close();
   }
   catch(IOException e)
   {

   }
 }  	
}