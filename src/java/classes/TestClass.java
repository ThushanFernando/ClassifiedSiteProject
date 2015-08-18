/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 *
 * @author SithuDewmi
 */
public class TestClass {

    public static void main(String[] args) throws Exception {
        System.out.println(isVld("batta1"));
        System.out.println(isVld("mypasS123"));
    }
    private static final Pattern VALID_LOGIN_DETAILS = Pattern.compile(
            "[0-9a-zA-Z]{6,20}");

    public static boolean isVld(String s) {
        return VALID_LOGIN_DETAILS.matcher(s).matches();
    }
    
    
    
}
