package com.yedam.dailycomma.myPage;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.member.MemberDTO;

@Repository
public class MyPageDAOMybatis {
	
	@Autowired SqlSessionTemplate mybatis;
	
	public List<MyPageDTO> getReserves(MyPageDTO dto) {
		 return mybatis.selectList("myPage.getReserves",dto);
	}
	public List<MyPageDTO> getPoints(MyPageDTO dto){
		return mybatis.selectList("myPage.getPoints",dto);
	}
	public List<MyPageDTO> getCountries(MyPageDTO dto){
		return mybatis.selectList("myPage.getCountries",dto);
	}
	
	public List<MyPageDTO> cancelReserve(String reserveNo){
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("reserveNo", reserveNo);
		mybatis.update("myPage.cancelReserve", map);
		return (List<MyPageDTO>) map.get("result");
	}
}
