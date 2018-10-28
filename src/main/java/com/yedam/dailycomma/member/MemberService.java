package com.yedam.dailycomma.member;

public interface MemberService {
	//등록
	public int insertMember(MemberDTO dto);
	//수정
	public int updateMember(MemberDTO dto);
	//삭제
	public int deleteMember(MemberDTO dto);
}
