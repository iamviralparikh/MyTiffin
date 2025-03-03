package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.StateRepository;

@Controller
public class CityController {
	
	@Autowired
	CityRepositoty repositorycity;
	
	@Autowired
	StateRepository  repositoryState;
	
	@GetMapping("newcity")
	public String newcity(Model model){
		List<StateEntity> allState = repositoryState.findAll();// all state

		model.addAttribute("allState", allState);
		
		return "NewCity";
	}
	
	
	
	@PostMapping("savecity")
	public String savecity(CityEntity entitycity) {
		// System.out.println(entitycity.getCityName()); 
		repositorycity.save(entitycity);
		return "redirect:/listcity";
	}
	
	@GetMapping("listcity")
	public String listcity(Model modelcity){
		List<CityEntity> citylisted = repositorycity.findAll();
		modelcity.addAttribute("ListCity", citylisted);
		return "ListCity"; // JSP FILe
	
	}
	
	
}



