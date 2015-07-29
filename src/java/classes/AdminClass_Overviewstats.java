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
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author SithuDewmi
 */
public class AdminClass_Overviewstats {

    classes.DbClass dbc = new classes.DbClass();
    private String id = null;
    private String timeStamp = null;
    private String category = null;
    private String count = null;
    private String timePeriod = null;
    private String firstYear = null;
    private String lastYear = null;

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
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the count
     */
    public String getCount() {
        return count;
    }

    /**
     * @param count the count to set
     */
    public void setCount(String count) {
        this.count = count;
    }

    /**
     * @return the timePeriod
     */
    public String getTimePeriod() {
        return timePeriod;
    }

    /**
     * @param timePeriod the timePeriod to set
     */
    public void setTimePeriod(String timePeriod) {
        this.timePeriod = timePeriod;
    }

    public int reviewAdsCount() {
        int count = 0;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "";
            ResultSet rs = stmt.executeQuery(query);
            if (!rs.isBeforeFirst()) {
                count = 0;
            } else {
                while (rs.next()) {
                    count = rs.getInt("");
                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int reviewTopAdsCount() {
        int count = 0;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "";
            ResultSet rs = stmt.executeQuery(query);
            if (!rs.isBeforeFirst()) {
                count = 0;
            } else {
                while (rs.next()) {
                    count = rs.getInt("");
                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int viewReports() {
        int count = 0;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "";
            ResultSet rs = stmt.executeQuery(query);
            if (!rs.isBeforeFirst()) {
                count = 0;
            } else {
                while (rs.next()) {
                    count = rs.getInt("");
                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public ArrayList pagevisitMonth() {
        ArrayList al = new ArrayList();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        c1.set(now.get(Calendar.YEAR), now.get(Calendar.MONTH), 01);

        c1.add(Calendar.MONTH, -12); // substract 12month
        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            for (int i = 0; i < 13; i++) {
                String thisMonth = (String) sdf.format(c1.getTime());
                c1.add(Calendar.MONTH, +1);
                String nextMonth = (String) sdf.format(c1.getTime());
                
                String query = "SELECT count(`time_stamp`) FROM  `site_visits` WHERE  `time_stamp` BETWEEN  '" + thisMonth + " 00:00:00' AND '" + nextMonth + " 00:00:00'";
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setTimePeriod(String.valueOf(thisMonth.charAt(5)) + String.valueOf(thisMonth.charAt(6)));
                    ao.setCount(rs.getString("COUNT(`time_stamp`)"));
                    al.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
    
    public ArrayList pagevisitYear() {
        ArrayList al = new ArrayList();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        c1.set(now.get(Calendar.YEAR), 00, 01);

        c1.add(Calendar.YEAR, -6); // substract 6 years
        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            for (int i = 0; i < 7; i++) {
                String thisYear = (String) sdf.format(c1.getTime());
                c1.add(Calendar.YEAR, +1);
                String nextYear = (String) sdf.format(c1.getTime());
                
                String query = "SELECT count(`time_stamp`) FROM  `site_visits` WHERE  `time_stamp` BETWEEN  '" + thisYear + " 00:00:00' AND '" + nextYear + " 00:00:00'";
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setTimePeriod(String.valueOf(thisYear+" to "+nextYear));
                    ao.setCount(rs.getString("COUNT(`time_stamp`)"));
                    al.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

    public ArrayList usersMonth() {
        ArrayList al = new ArrayList();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        c1.set(now.get(Calendar.YEAR), now.get(Calendar.MONTH), 01);

        c1.add(Calendar.MONTH, -12); // substract 12 month
        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            for (int i = 0; i < 13; i++) {
                String thisMonth = (String) sdf.format(c1.getTime());
                c1.add(Calendar.MONTH, +1);
                String nextMonth = (String) sdf.format(c1.getTime());
                
                String query = "SELECT COUNT(`activated_time_stamp`) FROM `user_account_status` WHERE  `activated_time_stamp` BETWEEN  '" + thisMonth + " 00:00:00' AND '" + nextMonth + " 00:00:00' AND `status`='Activated'";
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setTimePeriod(String.valueOf(thisMonth.charAt(5)) + String.valueOf(thisMonth.charAt(6)));
                    ao.setCount(rs.getString("COUNT(`activated_time_stamp`)"));

                    al.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
    
    public ArrayList usersYear() {
        ArrayList al = new ArrayList();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        c1.set(now.get(Calendar.YEAR), 00, 01);

        c1.add(Calendar.YEAR, -6); // substract 6 years
        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            for (int i = 0; i < 7; i++) {
                String thisYear = (String) sdf.format(c1.getTime());
                c1.add(Calendar.YEAR, +1);
                String nextYear = (String) sdf.format(c1.getTime());
                
                String query = "SELECT COUNT(`activated_time_stamp`) FROM `user_account_status` WHERE  `activated_time_stamp` BETWEEN  '" + thisYear + " 00:00:00' AND '" + nextYear + " 00:00:00' AND `status`='Activated'";
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setTimePeriod(String.valueOf(thisYear+" to "+nextYear));
                    ao.setCount(rs.getString("COUNT(`activated_time_stamp`)"));
                    al.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

    public ArrayList adsMonth() {
        ArrayList al = new ArrayList();
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        c1.set(now.get(Calendar.YEAR), now.get(Calendar.MONTH), 01);

        c1.add(Calendar.MONTH, -12); // substract 12 month
        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            for (int i = 0; i < 13; i++) {
                String thisMonth = (String) sdf.format(c1.getTime());
                c1.add(Calendar.MONTH, +1);
                String nextMonth = (String) sdf.format(c1.getTime());
                
                String query = "SELECT COUNT(`time_stamp`) FROM `item` WHERE  `time_stamp` BETWEEN  '" + thisMonth + " 00:00:00' AND '" + nextMonth + " 00:00:00' AND status='Active'";
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setTimePeriod(String.valueOf(thisMonth.charAt(5)) + String.valueOf(thisMonth.charAt(6)));
                    ao.setCount(rs.getString("COUNT(`time_stamp`)"));

                    al.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }
    
    public ArrayList adsYear() {
        ArrayList al = new ArrayList();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        Calendar now = Calendar.getInstance();
        c1.set(now.get(Calendar.YEAR), 00, 01);

        c1.add(Calendar.YEAR, -6); // substract 6 years
        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            for (int i = 0; i < 7; i++) {
                String thisYear = (String) sdf.format(c1.getTime());
                c1.add(Calendar.YEAR, +1);
                String nextYear = (String) sdf.format(c1.getTime());
                
                String query = "SELECT COUNT(`time_stamp`) FROM `item` WHERE  `time_stamp` BETWEEN  '" + thisYear + " 00:00:00' AND '" + nextYear + " 00:00:00' AND status='Active'";
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setTimePeriod(String.valueOf(thisYear+" to "+nextYear));
                    ao.setCount(rs.getString("COUNT(`time_stamp`)"));
                    al.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;
    }

    public ArrayList categoriesPresentage() {
        ArrayList al = new ArrayList();
        ArrayList al2 = new ArrayList();

        try {

            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();

            String query = "SELECT `main_name` FROM `category_main`";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                al.add(rs.getString("main_name"));
            }
            for (int i = 0; i < al.size(); i++) {
                query = "SELECT count(`time_stamp`) from `item` where `category_main`='" + al.get(i) + "' and status='Active'";
                rs = stmt.executeQuery(query);
                while (rs.next()) {
                    AdminClass_Overviewstats ao = new AdminClass_Overviewstats();
                    ao.setCategory(String.valueOf(al.get(i)));
                    ao.setCount(rs.getString("count(`time_stamp`)"));

                    al2.add(ao);

                }
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_Overviewstats.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al2;

    }

}