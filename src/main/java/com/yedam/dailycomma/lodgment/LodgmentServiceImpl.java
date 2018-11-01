package com.yedam.dailycomma.lodgment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LodgmentServiceImpl implements LodgmentService {
	@Autowired LodgmentDAO dao;

	@Override
	public List<LodgmentDTO> getMainSearch(LodgmentDTO dto) {
		// TODO Auto-generated method stub
		return dao.getMainSearch(dto);
	}

}
