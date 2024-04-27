package com.helper;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class SendEmail {
	private Session s ;
	public static SendEmail seInstance ;
	static {
		seInstance = new SendEmail();
	}
	private SendEmail() {
		startConnection();
	}
	
	
	private void startConnection(){
		String username = "vssutmca2022";
		String password = "vuxujqmgbjritrid";
		Properties prt = new Properties();
		prt.put("mail.smtp.auth", true);
		prt.put("mail.smtp.starttls.enable", true);
		prt.put("mail.smtp.port", "587");
		prt.put("mail.smtp.host", "smtp.gmail.com");
		
		s = Session.getInstance(prt,new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username,password);
			}
		});
	}
	public boolean sendMail(String to, String message) {
		boolean flag = false;
		String subject="Authentication Mail from GoBlog";
		try {
			Message m = new MimeMessage(s);
			m.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
			m.setSubject(subject);
			m.setContent(message, "text/html");
			Transport.send(m);
			flag  = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
