package com.springboot.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.Data;

@Data
@Entity
@Table(name = "USER_PROFILE")
@EntityListeners(AuditingEntityListener.class)
public class UserProfile {
	
	@Column(name = "fileName")
	private String fileName;
	
	
	@Column(name = "uploadPath")
	private String uploadPath;
	
	@Column(name = "uuid")
	private String uuid;
	
	@Id
	@Column(name = "USER_NO")
	private Long id;

}
