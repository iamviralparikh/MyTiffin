package com.grownited.controller.User;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.UserAddressEntity;
import com.grownited.repository.AreaRepository;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.StateRepository;
import com.grownited.repository.UserAddressRepository;

@Controller
public class UserAddressController {


	@Autowired
	UserAddressRepository useraddressrepository;
	
	@Autowired
	StateRepository repositoryState;
	
	@Autowired
	CityRepositoty repositorycity ;
	
	@Autowired
	AreaRepository repoarea;
	
//	@Autowired
//	UserAddressEntity useraddressentity;

	
	@GetMapping("addusersaddress")
	public String addusersaddress(Model model) {
		List<StateEntity> allUsState = repositoryState.findAll();
		model.addAttribute("allUsState",allUsState);
		List<CityEntity> allUsCity = repositorycity.findAll();
		model.addAttribute("allUsCity",allUsCity);
		List<AreaEntity> allUsArea = repoarea.findAll();
		model.addAttribute("allUsArea",allUsArea);
		
		return "addusersaddress";
	}	
	
	@PostMapping("saveuseraddress")
	public String saveuseraddress(UserAddressEntity useraddressentity) {
		// System.out.println(state.getStateName());
		useraddressrepository.save(useraddressentity);
		return "redirect:/listuseraddress"; // jsp
	}

	@GetMapping("listuseraddress")
	public String listuserAddress(Model modeluseradd) {
		List<UserAddressEntity> useraddlist = useraddressrepository.findAll();
		modeluseradd.addAttribute("allUserAdd", useraddlist);
		return "ListUserAddress";
	}

	@GetMapping("deleteuseraddress")
	public String deleteuserAddress(Integer userAddressId) {
		useraddressrepository.deleteById(userAddressId);
		return "redirect:/listuseraddress";
	}

	
	@GetMapping("viewuseraddress")
	public String viewuseraddress(Model model , Integer userAddressId) {
		Optional<UserAddressEntity> usEntity = useraddressrepository.findById(userAddressId);
		model.addAttribute("viewuseradd" , usEntity.get());
		return "viewuseraddress";
	}
	
	@GetMapping("edituseraddress")
	public String editstate(Integer userAddressId, Model model) {
		Optional<UserAddressEntity> op = useraddressrepository.findById(userAddressId);
//		if (op.isEmpty()) {
//			return "redirect:/listuseraddress";
//		} else {
			model.addAttribute("userAddress", op.get());
			return "EditUserAddress";

//		}
	}

//	
//
	@PostMapping("updateuseraddress")
	public String UpdateUserAddress(UserAddressEntity useraddressentity) {
		//System.out.println("User Address id: " + useraddressentity.getUserAddressId());
		Optional<UserAddressEntity> op = useraddressrepository.findById(useraddressentity.getUserAddressId());

		if (op.isPresent()) {
			UserAddressEntity dbuseraddress = op.get(); // pcode vhreg type id userId
			dbuseraddress.setUnitName(useraddressentity.getUnitName());
			useraddressrepository.save(dbuseraddress);
		}
		return "redirect:/listuseraddress";
	}

	@GetMapping("displayuseraddress")
	public String displayuseraddress() {
		return "displayuseraddress";
	}
}
