package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.wishlistEntity;

@Repository
public interface WishlistRepository extends JpaRepository<wishlistEntity, Integer> {
	

}
