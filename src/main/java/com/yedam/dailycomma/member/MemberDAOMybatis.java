package com.yedam.dailycomma.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOMybatis {
	@Autowired SqlSessionTemplate mybatis;
	
	//전체 조회
	public List<MemberDTO> getMembers(MemberSearchDTO searchDTO) {
		return mybatis.selectList("member.getMembers", searchDTO);
	}
	//건수 조회
	public int getCnt(MemberSearchDTO searchDTO) {
		return mybatis.selectOne("member.getCnt", searchDTO);
	}
	//등록
	public int insertMember(MemberDTO dto) {
		return mybatis.insert("member.insertMember", dto);
	}
	//수정
	public int updateMember(MemberDTO dto) {
		return mybatis.update("member.updateMember", dto);
	}
	//삭제
	public int deleteMember(MemberDTO dto) {
		return mybatis.delete("member.deleteMember", dto);
	}
	
	public MemberDTO getMember(MemberDTO dto) {
		return mybatis.selectOne("login.getMember", dto);
	}
	
}
