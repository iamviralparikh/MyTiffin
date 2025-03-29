package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserAddressEntity;

@Repository
public interface UserAddressRepository extends JpaRepository<UserAddressEntity, Integer> {
	//select u.* , a.area_name from user_address u,area a where u.area_id=a.area_id;
}
