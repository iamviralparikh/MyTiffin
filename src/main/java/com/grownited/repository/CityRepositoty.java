package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.CityDto;
import com.grownited.entity.CityEntity;

@Repository
public interface CityRepositoty extends JpaRepository<CityEntity, Integer> {
	
	//@Query(value="SELECT c.*, s.state_name FROM city c, state s WHERE c.state_id = s.state_id", nativeQuery = true)
}
