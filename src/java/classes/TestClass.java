/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author SithuDewmi
 */
public class TestClass {
//    public  boolean isValidDate(String inDate) {
//    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//    dateFormat.setLenient(false);
//    try {
//      dateFormat.parse(inDate.trim());
//    } catch (ParseException pe) {
//      return false;
//    }
//    return true;
//  }
//
//  public static void main(String[] args) {
// AdminClass_Overviewstats ao=new AdminClass_Overviewstats();
//    System.out.println(ao.isValidDate("2004/02-29"));
//    System.out.println(ao.isValidDate("2005-02-28"));
//  }
    
    

    public static void main(String[] args) throws Exception {
    
       AdminClass_ReportedMessages arm=new AdminClass_ReportedMessages();
        ArrayList al = arm.getMessageReports();
            Iterator itr = al.iterator();
            AdminClass_ReportedMessages received = null;
             while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_ReportedMessages) a;
                 System.out.println(received.getMessage_id());
                 System.out.println(received.getReceiver());
            }
    

        //HH converts hour in 24 hours format (0-23), day calculation
        
        
    }
}
