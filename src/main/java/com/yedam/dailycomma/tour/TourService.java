package com.yedam.dailycomma.tour;

import com.yedam.dailycomma.cast.CastDTO;

import java.util.List;

public interface TourService {
	//등록
	public int insertTour(TourDTO dto);
	//검색
	//public List<TourDTO> getTours(TourDTO dto); 
	
	public List<TourDTO> getCasts(TourDTO dto);
	//수정
	
	//삭제

	
	
}
