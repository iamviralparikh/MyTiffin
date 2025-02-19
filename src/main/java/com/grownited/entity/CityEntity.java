package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="city")
public class CityEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer CityId;
	private String cityName;
	private Integer stateId;
	
	public Integer getStateId() {
		return stateId;
	}
	
	public void setStateId(Integer stateId) {
		this.stateId = stateId;
	}
	
	public Integer getCityId() {
		return CityId;
	}
	
	public void setCityId(Integer cityId) {
		CityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	

	


}
