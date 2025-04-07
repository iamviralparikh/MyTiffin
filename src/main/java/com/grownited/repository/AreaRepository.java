package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AreaEntity;

@Repository
public interface AreaRepository extends JpaRepository<AreaEntity, Integer> {
	@Query(value="SELECT a.* , s.state_name , c.city_name FROM area a, state s , city c WHERE a.state_id = s.state_id AND a.city_id = c.city_id",nativeQuery = true)
	List<Object[]> getareacitystate();
	
}
