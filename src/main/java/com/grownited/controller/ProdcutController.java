package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProdcutController {
	@GetMapping("newproduct")
	public String newproduct() {
		return "NewProduct";//JSP FILE
	}
}
