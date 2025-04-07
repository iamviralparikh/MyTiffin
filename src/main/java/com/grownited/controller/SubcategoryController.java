package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.SubcategoryEntity;
import com.grownited.repository.CategoryRepository;
import com.grownited.repository.SubcategoryRepository;

@Controller
public class SubcategoryController {
	
	@Autowired
	SubcategoryRepository repoSubcategory;
	
	@Autowired
	CategoryRepository repositorycategory;
	
	@GetMapping("newsubcategory")
	public String newsubcategory(Model model){
		List<CategoryEntity> allSubCategory = repositorycategory.findAll();
		model.addAttribute("allSubCategory",allSubCategory);
		return "SubCategory";
	}
	
	
	@PostMapping("savesubcategory")
	public String savesubcategory(SubcategoryEntity entitysubcategory) {
		// System.out.println(entitycity.getCityName()); 
		repoSubcategory.save(entitysubcategory);
		return "redirect:/listsubcategory";
	}
	
	@GetMapping("listsubcategory")
	public String listsubcategory(Model model){
		List<Object[]> sublisted = repoSubcategory.getAll();
		model.addAttribute("ListSC", sublisted);
		return "ListSubCategory"; // JSP FILe
	
	}
	
	
	@GetMapping("deletesubcategory")
	public String deletesubcategory(Integer subcategoryId) {
		repoSubcategory.deleteById(subcategoryId);
		return "redirect:/listsubcategory";
	}

	@GetMapping("editsubcategory")
	public String editsubcategory(Integer subcategoryId, Model model) {
		List<Object[]> op = repoSubcategory.getBysubcategoryId(subcategoryId);
		if (op.isEmpty()) {
			return "redirect:/listsubcategory";
		} else {
			System.out.println(op.get(0)[2]);
			model.addAttribute("subcategory", op);
			return "EditSubcategory";

		}
	}
	
	

	
	@GetMapping("viewsubcategory")
	public String viewsubcategory(Integer subcategoryId, Model modelsub) {
		//System.out.println("ID==>" + subCategoryId);
		//Optional<SubcategoryEntity> op = repoSubcategory.findById(subCategoryId);
		List<Object[]> op =  repoSubcategory.getBysubcategoryId(subcategoryId);
		if (op.isEmpty()) {
			// not found
			return "ViewSubCategory";
		} else {
			// found
			//SubcategoryEntity subcategory = op.get();
			System.out.println(subcategoryId);
			modelsub.addAttribute("viewsubc", op.get(0));

			return "ViewSubCategory";
		}
	
	}

	@PostMapping("updatesubcategory")
	public String Updatesubcategory(SubcategoryEntity entitysubcategory) {
		System.out.println("Sub Category id: " + entitysubcategory.getCategoryId());
		Optional<SubcategoryEntity> op = repoSubcategory.findById(entitysubcategory.getSubcategoryId());

		if (op.isPresent()) {
			SubcategoryEntity dbsub = op.get(); // pcode vhreg type id userId
			dbsub.setSubCategoryName(entitysubcategory.getSubCategoryName());  
			repoSubcategory.save(dbsub);
		}
		return "redirect:/listsubcategory";
	}
	
	@GetMapping("displaysubcategory")
	public String displaysubcategory() {
		return "displaysubcategory";
	}

	
}
