package com.grownited.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller

public class SessionController {
	
	
	@Autowired
	UserRepository repositoryUser;
	
	
	@GetMapping(value={"/","signup"})
	public String signup() {
		return "signup";
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity EntityUser){
		System.out.println(EntityUser.getUserId());
		System.out.println(EntityUser.getFirstName());
		System.out.println(EntityUser.getLastName());
		System.out.println(EntityUser.getEmail());
		System.out.println(EntityUser.getPassword());
		System.out.println(EntityUser.getContactNum());
		System.out.println(EntityUser.getGender());
		System.out.println(EntityUser.getRole());
		
		repositoryUser.save(EntityUser);
		
		return "login";
	}
	
}
