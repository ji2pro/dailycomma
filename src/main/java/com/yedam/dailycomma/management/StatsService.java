package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

public interface StatsService {
	
	public List<Map<String,Object>> getStatsChart(String year);
	
	
	public List<Map<String,Object>> getReserveChart(String year);
	
	
	public List<ManagementDTO> selectRoomList(ManagementDTO dto);
	
	public List<ManagementDTO> selectTotalList(ManagementDTO dto);
	
}
