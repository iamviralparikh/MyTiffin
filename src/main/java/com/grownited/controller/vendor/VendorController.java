package com.grownited.controller.vendor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VendorController {
	@GetMapping("vendordashboard")
	public String vendordashboard(){
		return "VendorDashboard";
	}
}
