package com.grownited.controller.User;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserAddressEntity;
import com.grownited.repository.UserAddressRepository;

@Controller
public class UserAddressController {
//	
//	@Autowired
//	UserAddressRepository useraddressrepository;
//	
//	@Autowired
//	UserAddressEntity useraddressentity;
//	
//	@GetMapping("viewuseraddress")
//	public String viewuseraddress(Integer userAddressId , Model model) {
//		System.out.println("ID==>"+ userAddressId );
//		Optional<UserAddressEntity> opAdd = useraddressrepository.findById(userAddressId);
//		if(opAdd.isEmpty()) {
//			//not found
//		} else {
//			//found
//			UserAddressEntity user = opAdd.get();
//			model.addAttribute("userAddress", user);
//		}
//		
//		return "ViewUser";	
//	}
//	
//	@GetMapping("addusersaddress")
//	public String addusersaddress() {
//		return "addusersaddress";
//	}
//	
//	@PostMapping("saveuseraddress")
//	public String saveuseraddress(UserAddressEntity useraddressentity) {
//		// System.out.println(state.getStateName());
//		useraddressrepository.save(useraddressentity);
//		return "redirect:/listuseraddress"; // jsp
//	}
//	@GetMapping("listuseraddress")
//	public String listuserAddress(Model model) {
//		List<UserAddressEntity> useraddlisted = useraddressrepository.findAll();
//		model.addAttribute("allUser", useraddlisted);
//		return "ListUserAddress";
//	}
//
//	@GetMapping("deleteuseraddress")
//	public String deleteuserAddress(Integer userAddressId) {
//		useraddressrepository.deleteById(userAddressId);
//		return "redirect:/listuseraddress";
//	}
//
//	@GetMapping("edituseraddress")
//	public String editstate(Integer userAddressId, Model model) {
//		Optional<UserAddressEntity> op = useraddressrepository.findById(userAddressId);
//		if (op.isEmpty()) {
//			return "redirect:/listuseraddress";
//		} else {
//			model.addAttribute("userAddress", op.get());
//			return "EditUser";
//
//		}
//	}
//
//	
//
//	@PostMapping("updateuseraddress")
//	public String UpdateUserAddress(UserAddressEntity useraddressentity) {
//		System.out.println("User Address id: " + useraddressentity.getUserAddressId());
//		Optional<UserAddressEntity> op = useraddressrepository.findById(useraddressentity.getUserAddressId());
//
//		if (op.isPresent()) {
//			UserAddressEntity dbuseraddress = op.get(); // pcode vhreg type id userId
//			dbuseraddress.setUnitName(useraddressentity.getUnitName());
//			useraddressrepository.save(dbuseraddress);
//		}
//		return "redirect:/listuseraddress";
//	}
//
}
