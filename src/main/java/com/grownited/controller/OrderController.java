package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CartEntity;
import com.grownited.entity.OrderEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CartRepository;
import com.grownited.repository.OrderRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class OrderController {
	
	@Autowired
	OrderRepository repositoryorder;
	
	@Autowired
	CartRepository repocarttuser;
	
	
	
	@GetMapping("order")
	public String displayorder() {
		return "Order";
	}
	
	@GetMapping("displayorder")
	public String displaysorder() {
		return "displayorder";
	}
	
	@GetMapping("addtoorder")
	public String addorder(Model model,HttpSession httpsession,OrderEntity entityorder) {
		UserEntity user = (UserEntity) httpsession.getAttribute("user");
		Integer userId = user.getUserId(); 
		entityorder.setUserId(userId);
		List<OrderEntity> allMyOrder = repositoryorder.findAll();
		model.addAttribute("allmyOrder",allMyOrder);
		return "ListMyOrder";
	}
	
	@PostMapping("addedorder")
	public String addedorder(OrderEntity entityorder) {
		repositoryorder.save(entityorder);
		return "redirect:/addtoorder"; // jsp
	}
	
	@GetMapping("listorder")
	public String listorder(Model model){
		List<CartEntity> cartlisted = repocarttuser.findAll();
//		List<StateEntity> statelisted = repositoryState.findAll();
//		model.addAttribute("ListCity", statelisted);
		model.addAttribute("ListCart", cartlisted);
		return "ListOrder"; // JSP FILe
	}
	
	@GetMapping("listmyorder")
	public String listmyorder(Model model ,HttpSession httpsession){
		UserEntity user = (UserEntity) httpsession.getAttribute("user");//for fetching data from users
		//List<CartEntity> cartlisted = repocarttuser.findAll();
		List<Object[]> listOfCartItems = repocarttuser.getCartItems(user.getUserId()); //(user.getUserId()); for sending the data 
		model.addAttribute("order", listOfCartItems);
		return "ListMyOrder"; // JSP FILe
	}
	
//	@GetMapping("listmyorder")
//	public String userorder(Model model) {
//		List<OrderEntity> ListMyOrder = repositoryorder.findAll();
//		model.addAttribute("ListmyOrder",ListMyOrder);
//		return "ListMyOrder";
//	}
}
