package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {
	@GetMapping("addtocart")
	public String addtocart() {
		return "NewCart";
	}

	
	@GetMapping("displaycart")
	public String displaycart() {
		return "displaycart";
	}




}



