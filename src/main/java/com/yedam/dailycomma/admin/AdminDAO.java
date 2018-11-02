package com.yedam.dailycomma.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

@Repository
public class AdminDAO {
	@Autowired SqlSessionTemplate mybatis;
	
	public List<MemberDTO> getMembers(MemberDTO dto) {
		return mybatis.selectList("member.getMembers", dto);
	}
	public int getCnt(MemberSearchDTO searchDTO) {
		return mybatis.selectOne("member.getCnt", searchDTO);
	}
}

