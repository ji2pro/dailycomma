package com.yedam.dailycomma.tour;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;

@Repository
public class TourDAO {
	@Autowired SqlSessionTemplate mybatis;
	
	//전체 조회
	public List<TourDTO> getTours(TourDTO dto) {
		return mybatis.selectList("tour.getTours",dto);
	}
	//건수 조회
	public int getCnt(TourSearchDTO searchDTO) {
		return mybatis.selectOne("tour.getCnt", searchDTO);
	}
	public int insertTour(TourDTO dto) {
		return mybatis.insert("tour.insertTour", dto);
	}
	//삭제
	public int deleteTour(TourDTO dto) {
		return mybatis.delete("tour.deleteTour", dto);
	}
	
	public int approveTour(TourSearchDTO dto) {
		return mybatis.update("tour.approveTour", dto);
	}
	
	public int unapproveTour(TourSearchDTO dto) {
		return mybatis.update("tour.unapproveTour", dto);
	}
	public List<TourDTO> getCasts(TourDTO dto) {
		return mybatis.selectList("tour.getCasts",dto);
	}	
	
}
