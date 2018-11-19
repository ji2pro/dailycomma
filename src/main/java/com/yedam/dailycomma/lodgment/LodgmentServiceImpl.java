package com.yedam.dailycomma.lodgment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LodgmentServiceImpl implements LodgmentService {
	@Autowired LodgmentDAO dao;

	public List<LodgmentDTO> getMainSearch(LodgmentSearchDTO dto) {
		return dao.getMainSearch(dto);
	}
	public int setLodgment(LodgmentDTO dto) {
		return dao.setLodgment(dto);
	}
	public LodgmentDTO getLodgment(LodgmentDTO dto) {
		return dao.getLodgment(dto);
	}
	
	@Override
	public int insertHashTag(HashtagDTO dto) {
		return dao.insertHashTag(dto);
	}
	@Override
	public List<HashtagDTO> getHashTags(LodgmentDTO dto) {
		// TODO Auto-generated method stub
		return dao.getHashTags(dto);
	}
}
