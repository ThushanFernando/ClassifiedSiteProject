/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Indunil
 */
public class Item_Class {

    private String item_number;
    private String username;
    private String time_stamp;
    private String status;
    private String category_main;
    private String category_sub;
    private String district;
    private String city;

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

    /**
     * @return the category_main
     */
    public String getCategory_main() {
        return category_main;
    }

    /**
     * @param category_main the category_main to set
     */
    public void setCategory_main(String category_main) {
        this.category_main = category_main;
    }

    /**
     * @return the category_sub
     */
    public String getCategory_sub() {
        return category_sub;
    }

    /**
     * @param category_sub the category_sub to set
     */
    public void setCategory_sub(String category_sub) {
        this.category_sub = category_sub;
    }

    /**
     * @return the district
     */
    public String getDistrict() {
        return district;
    }

    /**
     * @param district the district to set
     */
    public void setDistrict(String district) {
        this.district = district;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    //methods 
    public int getItemCount(String category_main) throws SQLException {
        int count = 0;

        Connect_DB db = new Connect_DB();

        db.getConnection();

        Statement stmt = db.conn.createStatement();

        String query = "Select count(*) from item WHERE category_main='"+category_main+"'";

        ResultSet rs = stmt.executeQuery(query);

        while (rs.next()) {
            count = Integer.parseInt(rs.getString("count(*)"));
            System.out.println(category_main + ": " + count);
        }

        db.endConnection();
        return count;
    }
}
