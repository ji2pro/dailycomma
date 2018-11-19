package com.yedam.dailycomma.management;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;

@Service //빈 등록
public class ManagementServiceImpl implements ManagementService {
	@Autowired
	ManagementDAO dao;
	
    public List<ManagementDTO> selectReservation(String lodgmentNo){
        return dao.selectReservation(lodgmentNo);
    }
    /*public List<LodgmentDTO> getLodgments(LodgmentSearchDTO lodgmentSearchDTO) {
		return dao.getLodgments(lodgmentSearchDTO);
	}
	public int getLodgmentCnt(LodgmentSearchDTO lodgmentSearchDTO) {
		return dao.getLodgmentCnt(lodgmentSearchDTO);
	}*/
    public int deleteReserve(String[] reserveNo) {
		return dao.deleteReserve(reserveNo);
	}
}
