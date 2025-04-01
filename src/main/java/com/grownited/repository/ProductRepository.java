package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ProductEntity;

@Repository

public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
	@Query(value = "SELECT p.*, c.category_name, s.sub_category_name FROM product p, category c, subCategory s WHERE p.category_id = c.category_id AND p.subCategory_id = s.subCategory_id;",nativeQuery = true)
	List<Object[]> getAll();
	
	@Query(value = "SELECT p.*, c.category_name, s.sub_category_name FROM product p, category c, subCategory s WHERE p.category_id = c.category_id ;",nativeQuery = true)
	List<Object[]> getgetBy();
	
	@Query(value = "SELECT p.product_name , c.category_name , s.subcategory_id FROM product p , category c , subCategory s WHERE p.category_id = c.category_id AND p.subcategory_id = s.subcategory_id AND product_id = :productId",nativeQuery = true)
	List<Object[]> getprodCatSubCat(@Param("productId") Integer productId);
}
