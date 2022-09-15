package com.springboot.project.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@Table
@NoArgsConstructor
@AllArgsConstructor
public class ImgEntity {

	@Id
    @GeneratedValue
    @Column(name="img_id")
	private Long fno;
	
    private Long pd_code;

    private String fileName;

    private String fileOriName;

    private String uploadPath;

    
}
