package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.LocationEntity;
import com.grownited.repository.LocationRepository;

@Controller
public class LocationController {
	
	@Autowired
	LocationRepository repocitorylocation;
	
	@GetMapping("newlocation")
	public String newlocation() {
		return "NewLocation";//JSP File
	}
	
	@PostMapping("savelocation")
	public String savelocation(LocationEntity entitylocation) {
		System.out.println(entitylocation.getLocationName());
		repocitorylocation.save(entitylocation);
		return "NewLocation";//JSP File
	}
	
}
