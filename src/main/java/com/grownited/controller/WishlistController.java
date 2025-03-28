package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class WishlistController {
	
	@GetMapping("addwishlist")
	public String addwishlist() {
		return "AddWishlist";
	}

	@GetMapping("displaywishlist")
	public String displaywishlist() {
		return "displaywishlist";
	}
	
	@GetMapping("listwishlist")
	public String listwishlist() {
		return "ListWishlist";
	}
	
	
}

