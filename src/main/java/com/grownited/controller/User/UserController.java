package com.grownited.controller.User;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.UserRepository;


@Controller
public class UserController {
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	CityRepositoty repositorycity;
	

	@GetMapping("home")
	public String home() {
		return "UserDashboard";
	}
	
	@GetMapping("edituser")
	public String edituser() {
		return "EditUser";
	}
	
	
	@PostMapping("updateuser")
	public String UpdateUser() {
		return "UpdateUser";
	}
	
	

	@GetMapping("deleteuser")
	public String deleteuser( Integer userId) {
		repositoryUser.deleteById(userId);
		return "redirect:/listuser";
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
	
	
}
