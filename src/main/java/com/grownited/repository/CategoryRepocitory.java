package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CategoryEntity;

@Repository
public interface CategoryRepocitory extends JpaRepository<CategoryEntity, Integer> {
	

}
