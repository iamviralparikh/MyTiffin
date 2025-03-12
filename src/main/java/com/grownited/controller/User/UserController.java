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
	
	@GetMapping("viewcity")
	public String viewcity(Integer CityId , Model modelcity) {
		///System.out.println("ID==>"+ userId );
		Optional<CityEntity> op = repositorycity.findById(CityId);
		if(op.isEmpty()) {
			//not found
		} else {
			//found
			CityEntity cityuser = op.get();
			modelcity.addAttribute("city", cityuser);
		}
		
		return "ViewCity";	//jsp
	}
	@PostMapping("updateuser")
	public String UpdateUSer() {
		return "UpdateUser";
	}
	
	

	@GetMapping("deleteuser")
	public String deleteuser( Integer userId) {
		repositoryUser.deleteById(userId);
		return "redirect:/listuser";
	}
	
}
