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
import java.util.regex.Pattern;

/**
 *
 * @author SithuDewmi
 */
public class AdminClass_LoginMethods {

    DbClass dbc = new DbClass();

    public boolean checkPass(String username, String password) {
        boolean result = false;
        if (isVld(username) == true && isVld(password) == true) {
            try {

                dbc.getConnection();
                Statement stmt = dbc.conn.createStatement();
                String query = "SELECT `username`,`pass` FROM `user` WHERE `username`='" + username + "' AND `pass`='" + password + "' AND `user_type`='Admin'";
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()) {
                    if (rs.getString("username").equals(username) && rs.getString("pass").equals(password)) {
                        result = true;
                    }
                }
                dbc.endConnection();
            } catch (SQLException ex) {
                Logger.getLogger(AdminClass_NavbarTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

    public boolean updateAdminCustom(String username, String password) {
        boolean result = false;
        if (isVld(username) == true && isVld(password) == true) {

            try {
                dbc.getConnection();
                Statement stmt = dbc.conn.createStatement();
                String query = "UPDATE `userview` SET`pass`='" + password + "' WHERE `username`='" + username + "'";
                int res = stmt.executeUpdate(query);
                if (res == 1) {
                    result = true;
                }
                dbc.endConnection();
            } catch (SQLException ex) {
                Logger.getLogger(AdminClass_LoginMethods.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return result;
    }

    public String updateAdmin(String username, String usernameNew, String password) {
        String result = null;
        if (isVld(username) == true && isVld(usernameNew) == true && isVld(password) == true) {

            if (isAvailable(usernameNew) == true) {
                try {
                    dbc.getConnection();
                    Statement stmt = dbc.conn.createStatement();
                    String query = "UPDATE `userview` SET`pass`='" + password + "',`username`='" + usernameNew + "' WHERE `username`='" + username + "'";
                    int res = stmt.executeUpdate(query);
                    if (res == 1) {
                        result = "success";
                    }
                    dbc.endConnection();
                } catch (SQLException ex) {
                    Logger.getLogger(AdminClass_LoginMethods.class.getName()).log(Level.SEVERE, null, ex);
                }

            }else{
                result="unavailable";
            }
        }
        return result;
    }

    private static final Pattern VALID_LOGIN_DETAILS = Pattern.compile(
            "[0-9a-zA-Z]{8,20}");

    public static boolean isVld(String s) {
        return VALID_LOGIN_DETAILS.matcher(s).matches();
    }

    public boolean isAvailable(String s) {
        boolean result = false;
        try {
            dbc.getConnection();
            Statement stmt = dbc.conn.createStatement();
            String query = "SELECT `username` FROM `userview` WHERE `username`='" + s + "'";
            ResultSet rs = stmt.executeQuery(query);
            if (!rs.isBeforeFirst()) {
                result = true;
            }
            dbc.endConnection();
        } catch (SQLException ex) {
            Logger.getLogger(AdminClass_LoginMethods.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

}
