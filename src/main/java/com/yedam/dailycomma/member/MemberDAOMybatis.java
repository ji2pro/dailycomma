package com.yedam.dailycomma.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis {
	@Autowired SqlSessionTemplate mybatis;
	
	//등록
	public int insertMember(MemberDTO dto) {
		return mybatis.insert("member.insertMember", dto);
	}
	//수정
	public int updateMember(MemberDTO dto) {
		return mybatis.update("member.updateMember", dto);
	}
	//삭제
	public int deleteUser(MemberDTO dto) {
		return mybatis.delete("member.deleteMember", dto);
	}

}
