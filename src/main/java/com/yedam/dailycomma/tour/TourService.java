package com.yedam.dailycomma.tour;

import java.util.List;

public interface TourService {
	//등록
	public int insertTour(TourDTO dto);
	//검색
	public List<TourDTO> getTours(TourSearchDTO dto); 
	
	//수정
	
	//삭제
	
}
