package com.yedam.dailycomma.Mypage;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.member.MemberDTO;
@Repository
public class MypageDAOMybatis {
	
	@Autowired SqlSessionTemplate mybatis;
	
	public MemberDTO getMember(MemberDTO dto) {
		 return mybatis.selectOne("member.getMember",dto);
	}
	
	public List<MypageDTO> getReserves(MypageDTO dto) {
		 return mybatis.selectList("Mypage.getReserves",dto);
	}
	
	public List<MypageDTO> getPoints(MypageDTO dto){
		return mybatis.selectList("Mypage.getPoints",dto);
	}
	public List<MypageDTO> getCountrys(MypageDTO dto){
		return mybatis.selectList("Mypage.getCountrys",dto);
	}

}
