package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.StateRepository;

@Controller
public class CityController {
	
	@Autowired
	CityRepositoty repositorycity;
	
	@Autowired
	StateRepository  repositoryState;
	
	@GetMapping("newcity")
	public String newcity(Model model){
		List<StateEntity> allState1 = repositoryState.findAll();
		model.addAttribute("allState1",allState1);
		return "NewCity";
	}
	
	
	@PostMapping("savecity")
	public String savecity(CityEntity entitycity) {
		// System.out.println(entitycity.getCityName()); 
		repositorycity.save(entitycity);
		return "redirect:/listcity";
	}
	
	@GetMapping("listcity")
	public String listcity(Model modelcity){
		List<CityEntity> citylisted = repositorycity.findAll();
		modelcity.addAttribute("ListCity", citylisted);
		return "ListCity"; // JSP FILe
	}
	
	
	@GetMapping("deletecity")
	public String deletecity(Integer CityId) {
		repositorycity.deleteById(CityId);
		return "redirect:/listcity";
	}

	@GetMapping("editcity")
	public String editcity(Integer CityId, Model modelcity) {
		Optional<CityEntity> op = repositorycity.findById(CityId);
		if (op.isEmpty()) {
			return "redirect:/listcity";
		} else {
			modelcity.addAttribute("city", op.get());
			return "EditCity";

		}
	}

	@GetMapping("viewcity")
	public String viewcity(Integer CityId, Model modelcity) {
		//System.out.println("ID==>" + CityId);
		//Optional<CityEntity> op = repositorycity.findById(CityId);
		List<Object[]> city = repositorycity.getBycityId(CityId);
		
		//Optional<CityEntity> op = repositorycity.findById(CityId);
		if (city.isEmpty()) {
			// not found
			return "ViewCity";
		} else {
			// found
			//CityEntity city1 = op.get();
			//System.out.println(city1.getStateId());
			
			//System.out.println(city);
			modelcity.addAttribute("city", city.get(0));
				
			return "ViewCity";
		}

	}

	@PostMapping("updatecity")
	public String Updatecity(CityEntity cityentity) {
		//System.out.println("City id: " + cityentity.getStateId());
		Optional<CityEntity> op = repositorycity.findById(cityentity.getCityId());

		if (op.isPresent()) {
			CityEntity dbcity = op.get(); // pcode vhreg type id userId
			dbcity.setCityName(cityentity.getCityName());  
			repositorycity.save(dbcity);
		}
		return "redirect:/listcity";
	}

	@GetMapping("displaycity")
	public String displaycity() {
		return "displaycity";
	}
}



