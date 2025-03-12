package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.StateRepository;
import com.grownited.repository.UserRepository;

@Controller

public class AdminController {
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	StateRepository repositoryState;
	
	@Autowired
	CityRepositoty repositoryCity;
	
	@GetMapping("admindashboard")
	public String admindashboard() {
		return "AdminDashboard";
	}
	
	@GetMapping("addState")
	public String addState() {
		return "AddState";
	}
	
	
	@GetMapping("addcity")
	public String addcity(Model model) {

		List<StateEntity> allState = repositoryState.findAll();// all state
		model.addAttribute("allState", allState);
		return "AddCity";
	}
	
}
