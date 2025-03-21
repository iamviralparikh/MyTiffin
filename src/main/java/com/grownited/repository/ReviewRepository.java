package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.reviewsEntity;

@Repository
public interface ReviewRepository extends JpaRepository<reviewsEntity, Integer> {
	

}
