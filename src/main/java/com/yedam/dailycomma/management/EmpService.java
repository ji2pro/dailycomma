package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

public interface EmpService {
	
	public List<Map<String,Object>> getEmpChart();
	
	public List<Map<String,Object>> getEmpDept();
}
