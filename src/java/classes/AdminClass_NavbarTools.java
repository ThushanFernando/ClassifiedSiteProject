/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import classes.DbClass;
import java.util.ArrayList;

/**
 *
 * @author SithuDewmi
 */
public class AdminClass_NavbarTools {
    private final DbClass dbc=new DbClass();
    private String id=null;
    private String user=null;
    private String content=null;
    private String cntentId=null;
    private String timeStamp=null;

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the cntentId
     */
    public String getCntentId() {
        return cntentId;
    }

    /**
     * @param cntentId the cntentId to set
     */
    public void setCntentId(String cntentId) {
        this.cntentId = cntentId;
    }

    /**
     * @return the timeStamp
     */
    public String getTimeStamp() {
        return timeStamp;
    }

    /**
     * @param timeStamp the timeStamp to set
     */
    public void setTimeStamp(String timeStamp) {
        this.timeStamp = timeStamp;
    }
    
    public int notificationCount(){
        int count=0;
        try {
            dbc.getConnection();
            Statement stmt=dbc.conn.createStatement();
            String query="";
            ResultSet rs=stmt.executeQuery(query);
            if(!rs.isBeforeFirst()){
                count=0;
            }
            else{
            while(rs.next()){
                count=rs.getInt("count(notification_id)");
            }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public int messageCount(){
        int count=0;
        try {
            dbc.getConnection();
            Statement stmt=dbc.conn.createStatement();
            String query="SELECT  count(`message_id`) from user_messages where `read_state`='0' AND receiver='Admin'";
            ResultSet rs=stmt.executeQuery(query);
            if(!rs.isBeforeFirst()){
                count=0;
            }
            else{
            while(rs.next()){
                count=rs.getInt("count(notification_id)");
            }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
    public ArrayList unreadNotifications(){
        ArrayList al=new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt=dbc.conn.createStatement();
            String query="";
            ResultSet rs=stmt.executeQuery(query);
            if(!rs.isBeforeFirst()){
                
            }
            else{
                while(rs.next()){
                    AdminClass_NavbarTools an=new AdminClass_NavbarTools();
                    an.setId(rs.getString(""));
                    an.setContent(rs.getString(""));
                    an.setContent(rs.getString(""));
                    an.setTimeStamp(rs.getString(""));
                    al.add(an);
                }
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
    
    public ArrayList unreadMessages(){
        ArrayList al=new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt=dbc.conn.createStatement();
            String query="";
            ResultSet rs=stmt.executeQuery(query);
            if(!rs.isBeforeFirst()){
                
            }
            else{
                while(rs.next()){
                    AdminClass_NavbarTools an=new AdminClass_NavbarTools();
                    an.setId(rs.getString(""));
                    an.setUser(rs.getString(""));
                    an.setContent(rs.getString(""));
                    an.setTimeStamp(rs.getString(""));
                    al.add(an);
                }
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
    
    public int newMessages(){
        int status=0;
        try {
            dbc.getConnection();
            Statement stmt=dbc.conn.createStatement();
            String query="SELECT COUNT(`time_state`) FROM `user_messages` WHERE `time_state`='0'";
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next()){
                int count=rs.getInt("COUNT(`time_state`)");
                if(count==0){
                    status=1;
                }
                else{
                    status=0;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
    
}
