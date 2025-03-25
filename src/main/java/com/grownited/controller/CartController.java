package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {
	@GetMapping("order")
	public String order() {
		return "Order";
	}
}
