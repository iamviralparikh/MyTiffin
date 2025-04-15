package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CartEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.reviewsEntity;
import com.grownited.entity.wishlistEntity;
import com.grownited.repository.CartRepository;
import com.grownited.repository.WishlistRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class WishlistController {
	
	@Autowired
	WishlistRepository repowish;
	@Autowired
	CartRepository repocarttuser;
	
	
	@GetMapping("addtowishlist")
	public String addtowishlist(@RequestParam Integer productId , HttpSession httpSession) {
		UserEntity user = (UserEntity) httpSession.getAttribute("user");
		wishlistEntity Entitywish = new wishlistEntity();
		Entitywish.setProductId(productId);
		Entitywish.setUserId(user.getUserId());
		repowish.save(Entitywish);
		return "redirect:/mywishlist";
	}
	
	@GetMapping("mywishlist")
	public String listmywish(Model model ,HttpSession httpsession){
		UserEntity user = (UserEntity) httpsession.getAttribute("user");//for fetching data from users
		//List<CartEntity> cartlisted = repocarttuser.findAll();
		List<Object[]> listOfwish =repowish.getprouser(user.getUserId()) ;//(user.getUserId()); for sending the data 
		
		model.addAttribute("listOfwish", listOfwish);
		return "MyWishlist"; // JSP FILe
		
		
	}
	
	@GetMapping("deletemywish")
	public String deletemywish(Integer wishlistId) {
		repowish.deleteById(wishlistId);
		return "redirect:/mywishlist";
	}
	
	
//	@GetMapping("addwishlist")
//	public String addwishlist() {
//		return "AddWishlist";
//	}

	@GetMapping("displaywishlist")
	public String displaywishlist() {
		return "displaywishlist";
	}
	
	@GetMapping("listwishlist")
	public String listwishlist(Model model){
		//UserEntity user = (UserEntity) httpsession.getAttribute("user");//for fetching data from users
		//List<CartEntity> cartlisted = repocarttuser.findAll();
		List<wishlistEntity> listOfwishs =repowish.findAll();  //getprouser(user.getUserId()) ;//(user.getUserId()); for sending the data 
		
		model.addAttribute("listOfwishs", listOfwishs);
		return "ListWishlist";
	}
	
	
}

