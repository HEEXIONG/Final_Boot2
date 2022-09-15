package com.springboot.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.project.model.Authorities;

public interface AuthoritiesRepository extends JpaRepository<Authorities, Long>{

}
