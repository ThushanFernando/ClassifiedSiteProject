/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author SithuDewmi
 */
public class TestClass {
    public static void main(String[] args) throws Exception {
    AdminClass_Overviewstats ao=new AdminClass_Overviewstats();
    
    ArrayList al=ao.usersYear();
    Iterator itr = al.iterator();
    AdminClass_Overviewstats received = null;

        while (itr.hasNext()) {
            Object a = itr.next();
            received = (AdminClass_Overviewstats) a;

            System.out.println(received.getTimePeriod()+" "+received.getCount());
        }
 }
}
