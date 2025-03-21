package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CityEntity;

@Repository
public interface CityRepositoty extends JpaRepository<CityEntity, Integer> {
	
	@Query(value="SELECT ct.*, st.state_name FROM city ct, state st WHERE ct.state_Id = st.state_Id", nativeQuery = true)
	List<Object[]> getAll();
}
