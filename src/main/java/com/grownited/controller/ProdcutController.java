package com.grownited.controller;

import java.io.IOException;
import java.util.List;

import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
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
	public String saveproduct(ProductEntity entitypro,MultipartFile productfile) {
		// System.out.println(entitycity.getCityName());
		System.out.println(productfile.getOriginalFilename());
//		try {
//			Map results = Cloudinary.uploader().upload(productfile.getBytes() , ObjectUtils.emptyMap());
//			entitypro.setProductImageURL1(results.get("url").toString());
//		}catch(IOException err){
//			err.printStackTrace();
//		}
		repositoryproduct.save(entitypro);
		
		return "redirect:/listproduct";
	}
	
	@GetMapping("listproduct")
	public String listprodcut(Model modelpro){
		List<ProductEntity> prolisted = repositoryproduct.findAll();
		modelpro.addAttribute("ListProduct", prolisted);
		return "ListProduct"; // JSP FILe
	}
	
	@GetMapping("displayproduct")
	public String displayproduct() {
		return "displayproduct";//JSP FILE
	}
	
	@GetMapping("deleteproduct")
	public String deleteproduct(Integer productId) {
		repositoryproduct.deleteById(productId);
		return "redirect:/listproduct";
	}
	
	
	@GetMapping("viewproduct")
	public String viewproduct(Integer productId, Model modelview) {
		System.out.println("Product-ID"+ productId );
		//List<Object[]> product = repositoryproduct.getByproductId(productId)
		return "viewproduct";
	}
	
}
