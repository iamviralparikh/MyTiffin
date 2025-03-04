package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

	@Autowired
	JavaMailSender mailSender;

	public void sendWelcomeMail(String email, String firstName) {
		String subject = "Welcome to MyTiffin ";
		String body = "Hey " + firstName
				+ ", Your Account has Succesfull signed up"
				+  " & Thanks for joining us "
				+ " Now you can login ";
		String from = "viralparikhldce@gmail.com";
		

		// logic
		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);

		mailSender.send(message);

	}
	
	
	public void sendOtpForForgetPassword(String email, String firstName,String otp) {
		String subject = "OTP for Resetpassword";
		String body = "Hey " + firstName
				+ ", It seems you have request for forget password, please use below otp for reset password."
				+ "If not then simply ignore the message!OTP:"
				+otp;
		String from = "viralparikhldce@gmail.com";

		// logic
		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);

		mailSender.send(message);

	}
	
	
}
