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
    AdminClass_Message am=new AdminClass_Message();
    am.setUser("test");
    ArrayList al=am.getConversation();
    Iterator itr = al.iterator();
    AdminClass_Message received = null;

        while (itr.hasNext()) {
            Object a = itr.next();
            received = (AdminClass_Message) a;

            System.out.println(received.getSender()+" "+received.getContent()+" "+received.getTimeStamp());
        }
 }
}
