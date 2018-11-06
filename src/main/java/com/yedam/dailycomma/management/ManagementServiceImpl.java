package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service //빈등록
public class ManagementServiceImpl implements ManagementService {

	@Autowired
	ManagementDAO dao;
	
	/* @Inject
	    private MemberDAO dao;*/
	    
	    @Override
	    public List<ManagementDTO> selectReservation(ManagementDTO dto){
	    	
	        return dao.selectReservation();
	    }
	

		

}
