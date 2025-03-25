package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {
	@GetMapping("orderadmin")
	public String adminorder() {
		return "OrderAdmin";
	}
}
