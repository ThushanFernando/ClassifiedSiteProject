/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import Classes.DbClass;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SithuDewmi
 */
public class AdminClass_Message {

    DbClass dbc = new DbClass();
    private String user = null;
    private String sender = null;
    private String content = null;
    private String timeStamp = null;

    /**
     * @return the sender
     */
    public String getSender() {
        return sender;
    }

    /**
     * @param sender the sender to set
     */
    public void setSender(String sender) {
        this.sender = sender;
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

    public ArrayList allMessages() {
        ArrayList al = new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `sender`,`content`,`time_stamp` FROM `user_messages` WHERE `receiver`='Admin'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                AdminClass_Message am = new AdminClass_Message();
                am.setSender(rs.getString("sender"));
                am.setContent(rs.getString("content"));
                am.setTimeStamp(rs.getString("time_stamp"));
                al.add(am);
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Message.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

    public ArrayList readMessages() {
        ArrayList al = new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `sender`,`content`,`time_stamp` FROM `user_messages` WHERE `receiver`='Admin' AND `read_state`='1'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                AdminClass_Message am = new AdminClass_Message();
                am.setSender(rs.getString("sender"));
                am.setContent(rs.getString("content"));
                am.setTimeStamp(rs.getString("time_stamp"));
                al.add(am);
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Message.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

    public ArrayList unreadMessages() {
        ArrayList al = new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `sender`,`content`,`time_stamp` FROM `user_messages` WHERE `receiver`='Admin' AND `read_state`='0'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                AdminClass_Message am = new AdminClass_Message();
                am.setSender(rs.getString("sender"));
                am.setContent(rs.getString("content"));
                am.setTimeStamp(rs.getString("time_stamp"));
                al.add(am);
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Message.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

    public ArrayList getConversation() {
        ArrayList al = new ArrayList();
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `sender`,`content`,`time_stamp` FROM `user_messages` WHERE `sender`='" + getUser() + "' AND `receiver`='Admin' OR `sender`='Admin' AND `receiver`='" + getUser() + "'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                AdminClass_Message am = new AdminClass_Message();
                am.setSender(rs.getString("sender"));
                am.setContent(rs.getString("content"));
                am.setTimeStamp(rs.getString("time_stamp"));
                al.add(am);
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Message.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

}
