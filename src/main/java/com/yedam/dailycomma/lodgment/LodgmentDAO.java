package com.yedam.dailycomma.lodgment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LodgmentDAO {
	@Autowired SqlSessionTemplate mybatis;
	
	//메인검색
	public List<LodgmentDTO> getMainSearch(LodgmentDTO dto) {
		return mybatis.selectList("lodgment.getMainSearch", dto);
	}
	
	//숙박업체 등록
	public int setLodgment(LodgmentDTO dto) {
		return mybatis.update("lodgment.setLodgment", dto);
	}
	
	//숙소 상세정보(단건 조회)
	public LodgmentDTO getLodgment(LodgmentDTO dto) {
		return mybatis.selectOne("lodgment.getLodgment", dto);
	}
}
