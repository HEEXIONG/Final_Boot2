package com.springboot.project.sevice;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.project.mapper.Pdmapper;
import com.springboot.project.model.FileVO;
import com.springboot.project.model.Pdboard;

@Service("com.springboot.project.service.PdService")
public interface PdService {

	public static final Pdmapper mPdMapper = null;
	
	 List<Pdboard> getpdBoardList(Pdboard pdboard);

	    void insertpdBoard(Pdboard pdboard);

	    Pdboard getpdBoard(Pdboard pdboard);

	    void updatepdBoard(Pdboard pdboard);

	    void deletepdBoard(Pdboard pdboard);
	
	    public static int fileInsertService(FileVO file) throws Exception{
	    	return mPdMapper.fileInsert(file);
	    }
	    
	    
}

	


