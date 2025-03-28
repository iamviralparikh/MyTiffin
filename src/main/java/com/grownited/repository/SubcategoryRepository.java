package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.SubcategoryEntity;

@Repository
public interface SubcategoryRepository extends JpaRepository<SubcategoryEntity, Integer> {

	@Query(value="select s.*, c.category_name from subcategory s, category c WHERE s.category_Id = c.category_Id", nativeQuery = true )
	List<Object[]> getAll();

	
	@Query(value="select s.*, c.category_name from subcategory s, category c WHERE s.category_Id = c.category_Id and s.subcategory_Id =:subcategoryId", nativeQuery = true )
	List<Object[]> getBysubcategoryId(Integer subcategoryId);

	
}
 