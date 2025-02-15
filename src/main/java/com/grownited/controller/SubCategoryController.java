package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.SubCategoryEntity;
import com.grownited.repository.SubCategoryRepository;

@Controller
public class SubCategoryController {
	
	@Autowired
	SubCategoryRepository repositorysubcategory;
	
	@GetMapping("newsubcategory")
	public String subcategory() {
		return "SubCategory";//JSP File
	}
	
	@PostMapping("savesubcategories")
	public String savesubcategory(SubCategoryEntity entitysubcategory) {
		System.out.println(entitysubcategory.getSubCategoryName());
		System.out.println(entitysubcategory.getIsActive());
		repositorysubcategory.save(entitysubcategory);
		return "SubCategory";//JSP File
	}
	
	
}
