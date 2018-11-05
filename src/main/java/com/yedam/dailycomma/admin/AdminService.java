package com.yedam.dailycomma.admin;

import java.util.List;

import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

public interface AdminService {
	//회원
	public List<MemberDTO> getMembers(MemberSearchDTO memberSearchDTO);
	public int getMemberCnt(MemberSearchDTO memberSearchDTO);
	//업주
	public List<HostDTO> getHosts(HostSearchDTO hostSearchDTO);
	public int getHostCnt(HostSearchDTO hostSearchDTO);
	//업체(숙소)
	public List<LodgmentDTO> getLodgments(LodgmentSearchDTO lodgmentSearchDTO);
	public int getLodgmentCnt(LodgmentSearchDTO lodgmentSearchDTO);
}
