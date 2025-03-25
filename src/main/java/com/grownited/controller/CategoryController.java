package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CategoryEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CategoryRepository;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepository repocitorycategory;
	
	@GetMapping("newcategory")
	public String newcategory() {
		return "NewCategory";
	}
	
	@PostMapping("savecategory")
	public String savecategory(CategoryEntity entitycategory) {
		System.out.println(entitycategory.getCategoryName());
		repocitorycategory.save(entitycategory);
		return "redirect:/listcategory";
		
	}
	
	@GetMapping("listcategory")
	public String listcategory(Model model) {
		List<CategoryEntity> categorylisted = repocitorycategory.findAll();
		model.addAttribute("allCategory", categorylisted);
		return "ListCategory";
	}
	
	
	@GetMapping("deletecategory")
	public String deletecategory(Integer categoryId) {
		repocitorycategory.deleteById(categoryId);
		return "redirect:/listcategory";
	}

	@GetMapping("editcategory")
	public String editcategory(Integer categoryId, Model model) {
		Optional<CategoryEntity> op = repocitorycategory.findById(categoryId);
		if (op.isEmpty()) {
			return "redirect:/listcategory";
		} else {
			model.addAttribute("Category", op.get());
			return "EditCategory";

		}
	}

	@GetMapping("viewcategory")
	public String viewstate(Integer categoryId, Model model) {
		System.out.println("ID==>" + categoryId);
		Optional<CategoryEntity> op = repocitorycategory.findById(categoryId);
		if (op.isEmpty()) {
			// not found
		} else {
			// found
			CategoryEntity category = op.get();
			model.addAttribute("category", category);
		}

		return "ViewCategory";
	}

	@PostMapping("updatecategory")
	public String Updatecategory(CategoryEntity entitycategory) {
		System.out.println("category id: " + entitycategory.getCategoryId());
		Optional<CategoryEntity> op = repocitorycategory.findById(entitycategory.getCategoryId());

		if (op.isPresent()) {
			CategoryEntity dbcate = op.get(); // pcode vhreg type id userId
			dbcate.setCategoryName(entitycategory.getCategoryName());
			repocitorycategory.save(dbcate);
		}
		return "redirect:/listcategory";
	}
	
	@GetMapping("displaycategory")
	public String displaycategory() {
	return "displaycategory";
	}
}
