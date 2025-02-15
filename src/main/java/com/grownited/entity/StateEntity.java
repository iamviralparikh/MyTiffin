package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="state")
public class StateEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer StateId;
	private String StateName;
	public Integer getStateId() {
		return StateId;
	}
	public void setStateId(Integer stateId) {
		StateId = stateId;
	}
	public String getStateName() {
		return StateName;
	}
	public void setStateName(String stateName) {
		StateName = stateName;
	}
	
	
}
