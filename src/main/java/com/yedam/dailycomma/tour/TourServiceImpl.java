package com.yedam.dailycomma.tour;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TourServiceImpl implements TourService {
	@Autowired TourDAO dao;

	@Override
	public int insertTour(TourDTO dto) {
		// TODO Auto-generated method stub
		return dao.insertTour(dto);
	}

	@Override
	public List<TourDTO> getTours(TourDTO dto) {
		// TODO Auto-generated method stub
		return dao.getTours(dto);
	}
}
