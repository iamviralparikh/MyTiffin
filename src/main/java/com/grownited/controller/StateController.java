package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {

	@Autowired
	StateRepository repositoryState;


	@GetMapping("newstate")
	public String newstate() {
		return "NewState";/// JSP FILE
	}

	@PostMapping("savestate")
	public String savestate(StateEntity stateentity) {
		// System.out.println(state.getStateName());
		repositoryState.save(stateentity);
		return "redirect:/liststate"; // jsp
	}

	@GetMapping("liststate")
	public String liststate(Model modelstate) {
		List<StateEntity> statelisted = repositoryState.findAll();
		modelstate.addAttribute("allState", statelisted);
		return "ListState";
	}

	@GetMapping("deletestate")
	public String deletestate(Integer stateId) {
		repositoryState.deleteById(stateId);
		return "redirect:/liststate";
	}

	@GetMapping("editstate")
	public String editVehicle(Integer stateId, Model modelstate) {
		Optional<StateEntity> op = repositoryState.findById(stateId);
		if (op.isEmpty()) {
			return "redirect:/liststate";
		} else {
			modelstate.addAttribute("State", op.get());
			return "EditState";

		}
	}

	@GetMapping("viewstate")
	public String viewuser(Integer stateId, Model modelstate) {
		System.out.println("ID==>" + stateId);
		Optional<StateEntity> op = repositoryState.findById(stateId);
		if (op.isEmpty()) {
			// not found
		} else {
			// found
			StateEntity state = op.get();
			modelstate.addAttribute("state", state);
		}

		return "ViewState";
	}

	@PostMapping("updatestate")
	public String UpdateState(StateEntity stateentity) {
		System.out.println("state id: " + stateentity.getStateId());
		Optional<StateEntity> op = repositoryState.findById(stateentity.getStateId());

		if (op.isPresent()) {
			StateEntity dbState = op.get(); // pcode vhreg type id userId
			dbState.setStateName(stateentity.getStateName());
			repositoryState.save(dbState);
		}
		return "redirect:/liststate";
	}

}
