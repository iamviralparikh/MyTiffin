package com.grownited.controller.User;

import java.io.IOException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.UserAddressEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.UserAddressRepository;
import com.grownited.repository.UserRepository;


@Controller
public class UserController {
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	UserAddressRepository useraddressrepository;

	@GetMapping("home")
	public String home() {
		return "UserDashboard";
	}
	
	@GetMapping("usermanage")
	public String usermanage() {
		return "usermanage";
	}
	
	@GetMapping("edituser")
	public String edituser( Integer userId ,Model modeluser) {
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			return "redirect:/listuser";
		}else {
			modeluser.addAttribute("user",op.get());
			return "EditUser";
		}
	
	}
	
	@GetMapping("displayuser")
	public String displayuser() {
		return "displayuser";
	}
	
	@PostMapping("updateuser")
	public String updateuser(UserEntity entityuser , int id) {//pcode vhreg type vid 
		
		System.out.println("User ID"+ entityuser.getUserId());//id? db? 

		Optional<UserEntity> op = repositoryUser.findById(id);
		
		if(op.isPresent())
		{
			UserEntity dbuser = op.get(); //pcode vhreg type id userId 
			dbuser.setFirstName(entityuser.getFirstName());  
			dbuser.setLastName(entityuser.getLastName());//setParkingCode(vehicleEntity.getParkingCode());//code 
			//dbVehicle.setVehicleType(vehicleEntity.getVehicleType());//type 
			
			repositoryUser.save(dbuser);
		}
		return "redirect:/listuser";
	}
	
	

	@GetMapping("deleteuser")
	public String deleteuser( Integer userId) {
		repositoryUser.deleteById(userId);
		return "redirect:/listuser";
	}
	
	
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId , Model modeluser) {
		System.out.println("ID==>"+ userId );
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			//not found
		} else {
			//found
			UserEntity user = op.get();
			modeluser.addAttribute("user", user);
		}
		
		return "ViewUser";	
	}
	
	
	@GetMapping("actionboard")
	public String actionboard() {
		return "ActionBoard";
	}
	
	
}
