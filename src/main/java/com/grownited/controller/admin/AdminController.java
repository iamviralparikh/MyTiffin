package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.reviewsEntity;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.ReviewRepository;
import com.grownited.repository.StateRepository;
import com.grownited.repository.UserRepository;

@Controller

public class AdminController {
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	StateRepository repositoryState;
	
	@Autowired
	CityRepositoty repositoryCity;
	
	@Autowired
	ReviewRepository reporeview;
	
	@GetMapping("admindashboard")
	public String admindashboard() {
		return "AdminDashboard";
	}
	
	@GetMapping("addState")
	public String addState() {
		return "AddState";
	}
	
	
	@GetMapping("addcity")
	public String addcity(Model model) {

		List<StateEntity> allState = repositoryState.findAll();// all state
		model.addAttribute("allState", allState);
		return "AddCity";
	}
	
	@GetMapping("displaystate")
	public String displaystate() {
		return "displaystate";
	}
	@GetMapping("listadminreview")
	public String listadminreview(Model model , Integer reviewId) {
		List<Object[]> reviewlist = reporeview.getrevuser(reviewId);
		model.addAttribute("ListReviews",reviewlist);
		List<reviewsEntity> rating = reporeview.findAll();
        model.addAttribute("rating", rating);
        return "ListAdminReview";
	}

//	@GetMapping("listmyreviews")
//	public String listmyreview(Model model , Integer reviewId) {
//		
//		List<Object[]> reviewlist = reporeview.getrevuser(reviewId);
//		model.addAttribute("ListReviews",reviewlist);
//		
//		List<reviewsEntity> rating = reporeview.findAll();
//        model.addAttribute("rating", rating);
//        
//		return "ListReviews";
//	}

}


