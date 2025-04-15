package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

//import org.hibernate.mapping.Map;
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
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("newproduct")
	public String newproduct(Model model) {
		List<CategoryEntity> categorylisted = repocitorycategory.findAll();
		model.addAttribute("allCategory", categorylisted);
		List<SubcategoryEntity> subcategorylisted = repocitorysubcategory.findAll();
		model.addAttribute("allSubCategory", subcategorylisted);
		
		return "NewProduct";//JSP FILE
	}
	
	@PostMapping("saveproduct")
	public String saveproduct(ProductEntity entitypro,MultipartFile productImage,MultipartFile productImage2) {
		// System.out.println(entitycity.getCityName());
		System.out.println(productImage.getOriginalFilename());
		try {
			Map results = cloudinary.uploader().upload(productImage.getBytes() , ObjectUtils.emptyMap());
			entitypro.setProductImageURL1(results.get("url").toString());
		}catch(IOException err){
			err.printStackTrace();
		}
//		try {
//			Map results1 = cloudinary.uploader().upload(productImage2.getBytes() , ObjectUtils.emptyMap());
//			entitypro.setProductImageURL2(results1.get("url").toString());
//		}catch(IOException err){
//			err.printStackTrace();
//		}
		repositoryproduct.save(entitypro);
		
		return "redirect:/listproduct";
	}
	
	@GetMapping("listproduct")
	public String listprodcut(Model modelpro){
		List<Object[]> prolisted = repositoryproduct.getAll();
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
		List<Object[]> product = repositoryproduct.getprodCatSubCat(productId);
		System.out.println(product);
		modelview.addAttribute("productDetail" , product);
		return "viewproduct";
	}
	
	@GetMapping("editproduct")
	public String editproduct(Integer productId, Model modelpro) {
		Optional<ProductEntity> op = repositoryproduct.findById(productId);
		if (op.isEmpty()) {
			return "redirect:/listproduct";
		}else {
			modelpro.addAttribute("editpro",op.get());
		}
		return "EditProduct";
	}
	
//	@PostMapping("updateproduct")
//	public String Updaterpo(ProductEntity entitypro) {
//		System.out.println("Product id: " + entitypro.getProductId());
//		Optional<ProductEntity> op = repositoryproduct.findById(entitypro.getProductId());
//
//		if (op.isPresent()) {
//			ProductEntity dbpro = op.get(); // pcode vhreg type id userId
//			dbpro.setProductName(entitypro.getProductName());  
//			repositoryproduct.save(dbpro);
//		}
//		return "redirect:/listproduct";
//	}
	@PostMapping("updateproduct")
	public String updateproduct(ProductEntity entitypro ,Integer productId) {//pcode vhreg type vid 
		
		System.out.println(entitypro.getProductId());//id? db? 

		Optional<ProductEntity> op = repositoryproduct.findById(productId);
		
		if(op.isPresent())
		{
			ProductEntity dbpro = op.get(); //pcode vhreg type id userId 
			dbpro.setProductName(entitypro.getProductName());
			dbpro.setProductDetail(entitypro.getProductDetail());
			dbpro.setProductImageURL1(entitypro.getProductImageURL1());
			dbpro.setBasePrice(entitypro.getBasePrice());
			dbpro.setOfferPrice(entitypro.getOfferPrice());
			dbpro.setOfferPercentage(entitypro.getOfferPercentage());//code 
			//type 
			//
			repositoryproduct.save(dbpro);
		}
		return "redirect:/listproduct";
	}
}
