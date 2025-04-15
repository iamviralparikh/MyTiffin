package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CartEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CartRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {

	@Autowired
	CartRepository repocarttuser;
	
	
	
	
//	@GetMapping("cart")
//	public String myaddtocart() {
//		return "MyListCart";
//	}

	@PostMapping("addtocart")
	public String addtocart(@RequestParam Integer productId , HttpSession httpSession) {
		UserEntity user = (UserEntity) httpSession.getAttribute("user");
		CartEntity cartEntity = new CartEntity();
		cartEntity.setProductId(productId);
		cartEntity.setUserId(user.getUserId());
		repocarttuser.save(cartEntity);
		return "redirect:/mylistcart";
	}
	
	@GetMapping("mylistcart")
	public String listmycard(Model model ,HttpSession httpsession){
		UserEntity user = (UserEntity) httpsession.getAttribute("user");//for fetching data from users
		//List<CartEntity> cartlisted = repocarttuser.findAll();
		List<Object[]> listOfCartItems = repocarttuser.getCartItems(user.getUserId()); //(user.getUserId()); for sending the data 
		model.addAttribute("listmycarts", listOfCartItems);
		return "MyListCart"; // JSP FILe
	}
	
	@GetMapping("addtocart")
	public String addtocart() {
		return "NewCart";
	}

	
	@GetMapping("displaycart")
	public String displaycart() {
		return "displaycart";
	}

	@GetMapping("deletemycart")
	public String deletemycart(Integer cartId) {
		repocarttuser.deleteById(cartId);
		return "redirect:/mylistcart";
	}
	
//	@GetMapping("editcity")
//	public String editcity(Integer cartId, Model model) {
//		Optional<CityEntity> op = repositorycity.findById(CityId);
//		if (op.isEmpty()) {
//			return "redirect:/listcity";
//		} else {
//			model.addAttribute("editcart", op.get());
//			return "EditCity";
//
//		}
//	}

	@PostMapping("updatecart")
	public String Updatecart(CartEntity entitycart) {
		//System.out.println("City id: " + cityentity.getStateId());
		Optional<CartEntity> op = repocarttuser.findById(entitycart.getCartId());

		if (op.isPresent()) {
			CartEntity dbcart = op.get(); // pcode vhreg type id userId
			dbcart.setStatus(entitycart.getStatus());  //(cityentity.getCityName());  
			repocarttuser.save(dbcart);
		}
		return "redirect:/listcart";
	}

//-----------only Admin can see for cart from user-----------------
	@GetMapping("listcart")
	public String listcart(Model model){
		List<CartEntity> cartlisted = repocarttuser.findAll();
//		List<StateEntity> statelisted = repositoryState.findAll();
//		model.addAttribute("ListCity", statelisted);
		model.addAttribute("ListCart", cartlisted);
		return "ListCart"; // JSP FILe
	}
	
	
	
	@GetMapping("deleteadcart")
	public String deleteadcart(Integer cartId) {
		repocarttuser.deleteById(cartId);
		return "redirect:/listcart";
	}


	


}


//GENERAL SESSION NO CONCEPT SIKHVANDYO CHHE BUT TARRA PROJECT SPEICIFC ALAG THASE TOHDU BAU
//Have kai add to cart karvano try kar
//bav hard che kaik sehlu nathi