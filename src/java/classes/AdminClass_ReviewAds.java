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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SithuDewmi
 */
public class AdminClass_ReviewAds {
    private String item_number=null;
    private String username=null;
    private String time_stamp=null;
    private String status=null;
    private String title=null;
    DbClass dbc=new DbClass();
    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the item_number
     */
    public String getItem_number() {
        return item_number;
    }

    /**
     * @param item_number the item_number to set
     */
    public void setItem_number(String item_number) {
        this.item_number = item_number;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the time_stamp
     */
    public String getTime_stamp() {
        return time_stamp;
    }

    /**
     * @param time_stamp the time_stamp to set
     */
    public void setTime_stamp(String time_stamp) {
        this.time_stamp = time_stamp;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    public ArrayList reviewAds(){
        ArrayList al=new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `item_number`, `username`, `time_stamp`, `status`,  `title` FROM `itemview` WHERE `status`='Pending' OR `status`='Modify'";
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                AdminClass_ReviewAds ar=new AdminClass_ReviewAds();
                ar.setItem_number(rs.getString("item_number"));
                ar.setUsername(rs.getString("username"));
                ar.setTime_stamp(rs.getString("time_stamp"));
                ar.setStatus(rs.getString("status"));
                ar.setTitle(rs.getString("title"));
                al.add(ar);
                  
            } 
            dbc.endConnection();
              
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_ReviewAds.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
    
    public int approveAd(String id){
        int result=0;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "UPDATE `item` SET `status`='Active' WHERE `item_number`='"+id+"'";
            result=stmt.executeUpdate(query);
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_ReviewAds.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
              
    }
    
    public int removeAd(String id){
        int result=0;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "DELETE FROM `item` WHERE `item_number`='"+id+"'";
            result=stmt.executeUpdate(query);
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_ReviewAds.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
    public String getUserEmail(String user){
        String email=null;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `email` FROM `user` WHERE `username`='"+user+"'";
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next()){
                email=rs.getString("email");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_ReviewAds.class.getName()).log(Level.SEVERE, null, ex);
        }
        return email;
    }
    
    public int modifyAds(String id){
        int result=0;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "UPDATE `item` SET `status`='Modify'  WHERE `item_number`='"+id+"'";
            result=stmt.executeUpdate(query);
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_ReviewAds.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    
}