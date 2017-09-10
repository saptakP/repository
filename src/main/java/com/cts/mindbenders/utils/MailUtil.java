package com.cts.mindbenders.utils;

import java.util.List;
import java.util.Properties;
import java.util.Set;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.cts.mindbenders.models.Review;

public class MailUtil {

	public static void notifiyAdminReview(Review review){
		String to = "Pratip.Halder@cognizant.com";

		// Sender's email ID needs to be mentioned
		String from = "Pratip.Halder@cognizant.com";

		String msg =buildMsg(review);
		sendMail (to,from,msg,"Review Notification");
		
				
		
	}

	
	private static void sendMail(String to, String from, String msg,String sub){
		String host = "APACSMTP.CTS.COM";
		String port = "25";

		// Get system properties
		Properties properties = System.getProperties();

		// Setup mail server
		properties.setProperty("mail.smtp.host", host);
		properties.setProperty("mail.smtp.port", port);

		// Get the default Session object.
		Session session = Session.getDefaultInstance(properties);
		
		//String msgStr = buildMsg((Review)review);
		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Set Subject: header field
			message.setSubject("Do not reply - "+sub);

			// Now set the actual message
			message.setText(msg);

			// Send message
			Transport.send(message);
			System.out.println("Sent message successfully....");
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
	}
	
	
	private static String buildMsg(Review review) {
		// TODO Auto-generated method stub
		StringBuilder msg= new StringBuilder();
		msg.append("Hello Admin,\n\n");
		msg.append("New review has been posted for the property.\n");
		msg.append("Review Details ::\n\n");
		msg.append("Property Code : "+review.getHotelcode());
		msg.append("\nUsername : "+review.getUserName());
		msg.append("\nOverall Rating : "+review.getRvwOverall());
		msg.append("\nComments Pros : "+review.getRvwCommentsPros());
		msg.append("\nComments Cons : "+review.getRvwCommentsCons());
		msg.append("\n\n");
		msg.append("\nGo to Admin Dashboard for details.\n");
		msg.append("\n\nRegards");
		
		
		
		return msg.toString();
		
	}
	
	public static void notifiyAdminBatch(Set<String> hotelCodes){
		String to = "Pratip.Halder@cognizant.com";

		// Sender's email ID needs to be mentioned
		String from = "Pratip.Halder@cognizant.com";
		
		String msg = buildMsgBatch(hotelCodes);
		sendMail (to,from,msg,"Batch Notification");
		
		
	}
	
	private static String buildMsgBatch(Set<String> hotelCodes) {
		// TODO Auto-generated method stub
		StringBuilder msg= new StringBuilder();
		msg.append("Hello Admin,\n\n");
		msg.append("The images and vedios of the below Properties has been removed! \n");
		msg.append("Propertis Details ::\n\n");
		for (String hotelCode : hotelCodes) {
			msg.append(hotelCode);
			msg.append("\n");
		}
		
		
		msg.append("\n\n");
		msg.append("\nGo to Admin Dashboard for details.\n");
		msg.append("\n\nRegards");
		
			
		return msg.toString();
		
	}

}
