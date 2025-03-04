package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller

public class AdminController {
	@Autowired
	UserRepository repositoryUser;
	
	@GetMapping("admindashboard")
	public String admindashboard() {
		return "AdminDashboard";
	}
	
}
