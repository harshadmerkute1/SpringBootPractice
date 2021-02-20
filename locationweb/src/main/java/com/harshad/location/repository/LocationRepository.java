package com.harshad.location.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.harshad.location.model.Location;

public interface LocationRepository extends JpaRepository<Location	, Integer> {
	
	

}
