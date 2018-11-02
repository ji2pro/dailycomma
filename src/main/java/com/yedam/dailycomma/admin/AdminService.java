package com.yedam.dailycomma.admin;

import java.util.List;

import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

public interface AdminService {
	public List<MemberDTO> getMembers(MemberSearchDTO searchDTO);

	public int getCnt(MemberSearchDTO searchDTO);
}
