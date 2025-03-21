package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.repository.CategoryRepocitory;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepocitory repocitorycategory;
	
	@GetMapping("newcategory")
	public String newcategory() {
		return "NewCategory";
	}
	
	@PostMapping("savecategory")
	public String savecategory(CategoryEntity entitycategory) {
		System.out.println(entitycategory.getCategoryName());
		repocitorycategory.save(entitycategory);
		return "NewCategory";
		
	}
	
}
