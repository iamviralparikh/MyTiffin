package com.grownited.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
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
	public String saveuser(@Validated UserEntity EntityUser){
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
		//First encryption always in the database
		repositoryUser.save(EntityUser);
		//Second save the database
		emailService.sendWelcomeMail(EntityUser.getEmail(),EntityUser.getFirstName() );
		//3rd for mail
		
		
		return "login";
	}
	
	@GetMapping("listuser")
	public String listuser(Model modeluser) {
		List<UserEntity> userlisted = repositoryUser.findAll();
		modeluser.addAttribute("Listuser", userlisted);
		return "Listuser";
	}
	

	
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId , Model modeluser) {
		System.out.println("ID==>"+ userId );
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			//not found
		} else {
			//found
			UserEntity user = op.get();
			modeluser.addAttribute("user", user);
		}
		
		return "ViewUser";	
	}
	
	@GetMapping("deleteuser")
	public String deleteuser( Integer userId) {
		repositoryUser.deleteById(userId);
		return "redirect:/listuser";
	}
	
	
	@PostMapping("authenticate")
	public String authenticate(String email , String password , Model model) {
		System.out.println(email);
		System.out.println(password); // users -> email,password
		
		Optional<UserEntity> op = repositoryUser.findByEmail(email) ; 		// select * from users where email = :email and password = :password
				if (op.isPresent()) {
					// true
					// email
					UserEntity dbUser = op.get();
					if (encodering.matches(password, dbUser.getPassword())) {
						return "redirect:/home";
					}
				}
				model.addAttribute("error","Invalid Credentials");
		
		return "login"; // jsp file
	}
	
	
	
}
