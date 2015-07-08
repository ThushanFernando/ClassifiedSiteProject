package classes;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Indunil
 */
public class TimeStamp {

    public String getTimestamp() {
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        // Use time zone to generate timestamp
        df.setTimeZone(TimeZone.getTimeZone("Asia/Colombo"));
        System.out.println(df.format(date));

        return (df.format(date));
    }
}
