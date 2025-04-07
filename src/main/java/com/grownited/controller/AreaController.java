package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.SubcategoryEntity;
import com.grownited.repository.AreaRepository;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.StateRepository;

@Controller
public class AreaController {
	
	@Autowired
	AreaRepository repositoryarea;
	
	@Autowired
	CityRepositoty repocity;
	
	@Autowired
	StateRepository repostate;
	
	@GetMapping("addarea")
	public String addarea() {
		return "NewArea";/// JSP FILE
	}
	
	@GetMapping("newarea")
	public String newarea(Model model ) {
		List<CityEntity> citylisted = repocity.findAll();
		model.addAttribute("allCity1", citylisted);
		List<StateEntity> statelisted = repostate.findAll();
		model.addAttribute("allStateCity", statelisted);
		
		return "NewArea";/// JSP FILE
	}

	@PostMapping("savearea")
	public String savearea(AreaEntity entityarea) {
		// System.out.println(state.getStateName());
		repositoryarea.save(entityarea);
		return "redirect:/listarea"; // jsp
	}

	@GetMapping("listarea")
	public String liststate(Model modelarea) {
		List<Object[]> arealisted = repositoryarea.getareacitystate();
		System.out.println(arealisted.get(0)[0]);
		modelarea.addAttribute("allArea", arealisted);
		return "Listarea";
	}

	@GetMapping("deletearea")
	public String deletearea(Integer areaId) {
		repositoryarea.deleteById(areaId);
		return "redirect:/listarea";
	}

	@GetMapping("editarea")
	public String editstate(Integer areaId, Model modelarea) {
		Optional<AreaEntity> op = repositoryarea.findById(areaId);
		if (op.isEmpty()) {
			return "redirect:/listarea";
		} else {
			modelarea.addAttribute("area", op.get());
			return "EditArea";

		}
	}

//	@GetMapping("viewarea")
//	public String viewarea(Integer areaId, Model modelarea) {
//		System.out.println("ID==>" + areaId);
//		List<Object[]> area = repositoryarea.getareacitystate(areaId);
//		modelarea.addAttribute("area", area);
//		return "ViewArea";
//	}

	@PostMapping("updatearea")
	public String Updatearea(AreaEntity areaentity) {
		System.out.println("state id: " + areaentity.getAreaId());
		Optional<AreaEntity> op = repositoryarea.findById(areaentity.getAreaId());

		if (op.isPresent()) {
			AreaEntity dbArea = op.get(); // pcode vhreg type id userId
			dbArea.setAreaName(areaentity.getAreaName());
			repositoryarea.save(dbArea);
		}
		return "redirect:/listarea";
	}

	@GetMapping("displayarea")
	public String displayarea() {
		return "displayarea";
	}
}


