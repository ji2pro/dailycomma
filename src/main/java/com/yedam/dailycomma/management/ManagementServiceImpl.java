package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.member.MemberDTO;

@Service //빈등록
public class ManagementServiceImpl implements ManagementService {

	@Autowired
	ManagementDAO dao;
	
	    
	    @Override
	    public List<ManagementDTO> selectReservation(ManagementDTO dto){
	    	
	        return dao.selectReservation();
	    }
	
	    public int deleteReserve(ManagementDTO dto) {
			return dao.deleteReserve(dto);
		}
		

}
