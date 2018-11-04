package com.yedam.dailycomma.admin;

import java.util.List;

import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

public interface AdminService {
	public List<MemberDTO> getMembers(MemberSearchDTO searchDTO);
	public List<HostDTO> getHosts(HostSearchDTO searchDTO);
	public int getMemberCnt(MemberSearchDTO searchDTO);
	public int getHostCnt(HostSearchDTO searchDTO);
}
