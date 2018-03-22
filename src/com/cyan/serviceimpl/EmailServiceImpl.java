package com.cyan.serviceimpl;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.tools.ant.taskdefs.SendEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.cyan.service.EmailService;
import com.sun.xml.internal.org.jvnet.mimepull.MIMEMessage;


@Service
public class EmailServiceImpl implements EmailService{

	@Autowired
	private JavaMailSender javaMailSender;
	
	@Override
	public void SendEmail(String to, String subject, String body) throws MessagingException {
		
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
		helper.setTo(to);
		helper.setSubject(subject);
		helper.setText(body, true);
		javaMailSender.send(mimeMessage);
		
		System.out.println("Successfully sent 1 Email");
	}
}
