package com.grownited.controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class UserController {
	
	

	@GetMapping("home")
	public String home() {
		return "UserDashboard";
	}
	
	@GetMapping("edituser")
	public String edituser() {
		return "EditUser";
	}
	
	@PostMapping("updateuser")
	public String UpdateUSer() {
		return "UpdateUser";
	}
	
}
