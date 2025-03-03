package com.grownited.dto;

public class CityDto {
	private Integer CityId;
	private String cityName;
	private Integer stateId;
	private String stateName;
	
	
	public CityDto(Integer cityId, String cityName, Integer stateId, String stateName) {
		super();
		CityId = cityId;
		this.cityName = cityName;
		this.stateId = stateId;
		this.stateName = stateName;
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
	public Integer getStateId() {
		return stateId;
	}
	public void setStateId(Integer stateId) {
		this.stateId = stateId;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	
	
	
	
}
