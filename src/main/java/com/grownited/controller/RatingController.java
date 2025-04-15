package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.ProductEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.reviewsEntity;
import com.grownited.repository.ReviewRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class RatingController {
	
	@Autowired
	ReviewRepository reporeview;
	
	
	@GetMapping("displayratings")
	public String displayrating() {
		return "displayrating";
	}
//	
//	@PostMapping("review")
//	public String addtocart(@RequestParam Integer productId , HttpSession httpSession) {
//		UserEntity user = (UserEntity) httpSession.getAttribute("user");
//		
//		repocarttuser.save(cartEntity);
//		return "redirect:/mylistcart";
//	}
	
	@GetMapping("myreviews")
	public String myreviews() {
		return "Reviews";
	}
	


	
	
	@PostMapping("addreview")
	public String sumbitrating( reviewsEntity entityrev, Model model,HttpSession Session) {
		System.out.println("hi...");
		UserEntity user = (UserEntity) Session.getAttribute("user");
		Integer userId = user.getUserId(); 
		
		entityrev.setUserId(userId);
		reporeview.save(entityrev);
		
		return "redirect:/listmyreviews";
	}
	
	@GetMapping("addreview")
	public String reviews(Model model,@RequestParam("productId") Integer productId) {
		List<reviewsEntity> allreviewlist = reporeview.findAll();
		model.addAttribute("AllReviews",allreviewlist);
		model.addAttribute("productId",productId);
		return "AddReviews";//JSP FILE
	}

	@GetMapping("listmyreviews")
	public String listmyreview(Model model , Integer reviewId) {
		
		List<Object[]> reviewlist = reporeview.getrevuser(reviewId);
		model.addAttribute("ListReviews",reviewlist);
		
		List<reviewsEntity> rating = reporeview.findAll();
        model.addAttribute("rating", rating);
        
		return "ListReviews";
	}
	
	
}

