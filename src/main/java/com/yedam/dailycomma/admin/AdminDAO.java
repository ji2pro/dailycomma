package com.yedam.dailycomma.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	@Autowired SqlSessionTemplate mybatis;
	
/*	public List<MemberDTO> getMembers(MemberDTO dto) {
		return mybatis.selectList("member.getMembers", dto);
	}
	public int getCnt(MemberSearchDTO searchDTO) {
		return mybatis.selectOne("member.getCnt", searchDTO);
	}*/
}

