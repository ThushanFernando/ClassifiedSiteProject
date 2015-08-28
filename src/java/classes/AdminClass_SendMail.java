/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author SithuDewmi
 */
public class AdminClass_SendMail {
    public int mailClass(String reciever,String subject,String content){
        int result=1;
        Properties props = new Properties();
        props.setProperty("mail.host", "mail.superb.lk");
        props.setProperty("mail.smtp.port", "25");
        props.setProperty("mail.smtp.auth", "true");

        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                //TODO Auto-generated method stub
                return new PasswordAuthentication("support@superb.lk", "support@ishan");
            }
        };

        Session session = Session.getInstance(props, auth);
        Message msg = new MimeMessage(session);
        try {
            msg.setSubject(subject);
            msg.setText(content);
            msg.setFrom(new InternetAddress("support@superb.lk", "Support@Superb.lk"));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(reciever));
            Transport.send(msg);
        } catch (MessagingException | UnsupportedEncodingException ex) {
            result=0;
            Logger.getLogger(AdminClass_SendMail.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        return result;
    }
    
}
