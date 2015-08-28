/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SithuDewmi
 */
public class TestClass {
    DbClass dbc=new DbClass();

    public static void main(String[] args) throws Exception {
        AdminClass_Message am=new AdminClass_Message();
        ArrayList al = am.msg();
            Iterator itr = al.iterator();
            AdminClass_Message received = null;
             while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Message) a;
                 System.out.println(received.getSender());
                 System.out.println(received.getContent());
                 System.out.println(received.getTimeStamp());
                 System.out.println(received.getState());
                 System.out.println("--------------------------------");
            }
    }
     
    

    
    
}
