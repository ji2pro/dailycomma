package com.yedam.dailycomma.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.member.MemberDAOMybatis;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired MemberDAOMybatis memberDAO;
	
	public List<MemberDTO> getMembers(MemberSearchDTO searchDTO) {
		return memberDAO.getMembers(searchDTO);
	}
	public int getCnt(MemberSearchDTO searchDTO) {
		return memberDAO.getCnt(searchDTO);
	}
}
