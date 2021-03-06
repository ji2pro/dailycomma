package com.yedam.dailycomma.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired MemberDAOMybatis dao;
	
	public int insertMember(MemberDTO dto) {
		return dao.insertMember(dto);
	}
	public int updateMember(MemberDTO dto) {
		return dao.updateMember(dto);
	}
	public int deleteMember(MemberDTO dto) {
		return dao.deleteMember(dto);
	}
	@Override
	public MemberDTO getMember(MemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.getMember(dto);
	}
	@Override
	public MemberDTO updateGetMember(MemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.updateGetMember(dto);
	}

}
