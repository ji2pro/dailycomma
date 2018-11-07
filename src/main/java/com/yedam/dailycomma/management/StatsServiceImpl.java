package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service //빈등록
public class StatsServiceImpl implements StatsService {

	@Autowired
	StatsDAO dao;
	
	
	@Override
	public List<Map<String, Object>> getStatsChart() {
		
		return dao.getStatsChart();
	}

	

}
