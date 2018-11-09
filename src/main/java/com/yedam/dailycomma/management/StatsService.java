package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

public interface StatsService {
	
	public List<Map<String,Object>> getStatsChart();
	
	public List<ManagementDTO> selectRoomList(ManagementDTO dto);
	
}
