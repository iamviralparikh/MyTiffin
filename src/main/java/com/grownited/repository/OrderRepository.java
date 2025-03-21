package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.OrderEntity;

@Repository
	public interface OrderRepository extends JpaRepository<OrderEntity, Integer> {

}
