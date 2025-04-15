package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CartEntity;

@Repository
public interface CartRepository extends JpaRepository<CartEntity, Integer> {
	//@Query(value = "select ct.* , p.product_name , c.category_name from cart ct , product p , category c  where p.category_id = c.category_id AND p.category_id = p.product_id ;",nativeQuery = true)
	//List<Object[]> getProCatAll();
	
	@Query(value = "select ct.* , p.product_name , p.offer_price , p.product_imageurl1 from cart ct , product p where ct.product_id = p.product_id AND ct.user_id = :userId;" , nativeQuery = true)
	List<Object[]> getCartItems(@Param("userId") Integer userId);
}
