package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProductEntity;

@Repository

public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
	//@Query(value = "",nativeQuery = true)
	//List<Object[]> getAll();
			
}
