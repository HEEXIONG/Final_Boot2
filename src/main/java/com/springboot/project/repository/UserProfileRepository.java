package com.springboot.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.project.model.UserProfile;

public interface UserProfileRepository extends JpaRepository<UserProfile, Long> {
	
	Long countByid(Long id);

}
