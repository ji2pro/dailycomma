package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StatsDAO {
	
	@Autowired SqlSessionTemplate mybatis;
	//empMapper.xml의 아이디 명과 EmpDAO 메서드 명을 같이 해주면 보기 쉽다.
	
	public List<Map<String,Object>> getStatsChart(String year){
		return mybatis.selectList("stats.getStatsChart",year);
	}
	
	public List<Map<String,Object>> getReserveChart(String year){
		return mybatis.selectList("stats.getReserveChart",year);
	}
	
	
	public List<ManagementDTO> selectRoomList(){
		return mybatis.selectList("stats.selectRoomList");
	}
	
	public List<ManagementDTO> selectTotalList(){
		return mybatis.selectList("stats.selectTotalList");
	}
	
}
