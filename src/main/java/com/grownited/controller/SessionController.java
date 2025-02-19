package com.grownited.controller;


import java.beans.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.EmailService;

@Controller

public class SessionController {
	
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	EmailService emailService;
	
	@Autowired
	PasswordEncoder encodering;
	
	
	@GetMapping(value={"/","signup"})
	public String signup() {
		return "signup";
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity EntityUser){
		//System.out.println(EntityUser.getUserId());
		//System.out.println(EntityUser.getFirstName());
		//System.out.println(EntityUser.getLastName());
		//System.out.println(EntityUser.getEmail());
		//System.out.println(EntityUser.getPassword());
		//System.out.println(EntityUser.getContactNum());
		//System.out.println(EntityUser.getGender());
		//System.out.println(EntityUser.getRole());

		String passwording = encodering.encode(EntityUser.getPassword());
		EntityUser.setPassword(passwording);
		//First encryption in the database
		repositoryUser.save(EntityUser);
		//Second save the database
		emailService.sendWelcomeMail(EntityUser.getEmail(),EntityUser.getFirstName() );
		//3rd for mail
		
		
		return "login";
	}
	
}
