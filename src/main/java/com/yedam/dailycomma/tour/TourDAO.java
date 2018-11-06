package com.yedam.dailycomma.tour;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TourDAO {
	@Autowired SqlSessionTemplate mybatis;
	
	//전체 조회
	public List<TourDTO> getTours(TourDTO dto) {
		return mybatis.selectList("tour.getTours",dto);
	}
	
	public int insertTour(TourDTO dto) {
		return mybatis.insert("tour.insertTour", dto);
	}
}
