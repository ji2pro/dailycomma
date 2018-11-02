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
		return mybatis.selectList("host.getMainSearch", dto);
	}


}
