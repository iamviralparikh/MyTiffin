package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.ProductEntity;
import com.grownited.entity.SubcategoryEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.SubcategoryRepository;

@Controller
public class ProdcutController {

	@Autowired
	CategoryRepository repocitorycategory;
	
	@Autowired
	ProductRepository repositoryproduct;
	
	@Autowired
	SubcategoryRepository repocitorysubcategory;
	
	@GetMapping("newproduct")
	public String newproduct(Model model) {
		List<CategoryEntity> categorylisted = repocitorycategory.findAll();
		model.addAttribute("allCategory", categorylisted);
		List<SubcategoryEntity> subcategorylisted = repocitorysubcategory.findAll();
		model.addAttribute("allSubCategory", subcategorylisted);
		
		return "NewProduct";//JSP FILE
	}
	
	@PostMapping("saveproduct")
	public String saveproduct(ProductEntity entitypro) {
		// System.out.println(entitycity.getCityName()); 
		repositoryproduct.save(entitypro);
		return "redirect:/listcity";
	}
	
	@GetMapping("displayproduct")
	public String displayproduct() {
		return "displayproduct";//JSP FILE
	}
	
	
}
