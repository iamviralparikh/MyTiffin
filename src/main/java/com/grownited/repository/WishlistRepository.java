package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.wishlistEntity;

@Repository
public interface WishlistRepository extends JpaRepository<wishlistEntity, Integer> {
    List<wishlistEntity> findByUserId(Integer userId);
	
    @Query(value = "select w.* ,p.product_name ,p.product_imageurl1,p.offer_price from wishlist w, product p where w.product_id = p.product_id AND w.user_id = :userId", nativeQuery = true)
List<Object[]> getprouser(@Param("userId") Integer userId);
}
