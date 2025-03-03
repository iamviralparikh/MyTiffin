package com.grownited.controller.delivey;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DeliveryController {
	@GetMapping("deliverydashboard")
	public String deliverydashboard() {
		return "deliverydashboard";
	}
}
