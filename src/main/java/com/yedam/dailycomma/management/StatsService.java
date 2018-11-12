package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

public interface StatsService {
	
	public List<Map<String,Object>> getStatsChart();
	
	
	public List<Map<String,Object>> getReserveChart();
	
	
	public List<ManagementDTO> selectRoomList(ManagementDTO dto);
	
	public List<ManagementDTO> selectTotalList(ManagementDTO dto);
	
}
