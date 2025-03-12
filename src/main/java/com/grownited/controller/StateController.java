package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller

public class StateController {
	
	@Autowired
	StateRepository repositoryState;
	
	
	
	@GetMapping("newstate")
	public String newstate() {
		return "NewState";///JSP FILE
	}
	
	@PostMapping("savestate")
	public String savestate(StateEntity stateEntity) {
		//System.out.println(state.getStateName());
		repositoryState.save(stateEntity);
		return "redirect:/liststate"; //jsp
	}
	
	
	
	@GetMapping("liststate")
	public String liststate(Model modelstate) {
		List<StateEntity> statelisted = repositoryState.findAll() ;
		modelstate.addAttribute("allState", statelisted);
		return "ListState";
	}
	
	@GetMapping("deletestate")
	public String deletestate(Integer stateId) {
	
		repositoryState.deleteById(stateId);
		return "redirect:/liststate";
	}
	
}
