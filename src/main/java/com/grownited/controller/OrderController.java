package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.OrderEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.OrderRepository;

@Controller
public class OrderController {
	
	@Autowired
	OrderRepository repositoryorder;
	
	@GetMapping("displayorderadmin")
	public String displayorderadmin() {
		return "displayorderadmin";
	}
	
	@GetMapping("addorder")
	public String addorder(Model model) {
		List<OrderEntity> allorder = repositoryorder.findAll();
		model.addAttribute("allorder",allorder);
		return "NewOrder";
	}
	
	@PostMapping("saveorder")
	public String savestate(OrderEntity entityorder) {
		repositoryorder.save(entityorder);
		return "redirect:/listorder"; // jsp
	}
	
	
	@GetMapping("listorder")
	public String adminorder() {
		return "ListOrder";
	}
}
