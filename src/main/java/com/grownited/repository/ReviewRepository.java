package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.reviewsEntity;

@Repository
public interface ReviewRepository extends JpaRepository<reviewsEntity, Integer> {
	

	@Query( value = "select r.* , u.first_Name , u.last_Name , u.profile_pic_path , p.product_name from reviews r ,product p, users u where r.user_Id = u.user_Id AND r.product_id=p.product_id;",nativeQuery = true )
	List<Object[]> getrevuser(@Param("userId")Integer userId);	
}
