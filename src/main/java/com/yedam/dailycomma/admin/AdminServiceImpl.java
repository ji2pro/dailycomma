package com.yedam.dailycomma.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.host.HostDAO;
import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentDAO;
import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberDAOMybatis;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired MemberDAOMybatis memberDAO;
	@Autowired HostDAO hostDAO;
	@Autowired LodgmentDAO lodgmentDAO;
	
	//회원
	public List<MemberDTO> getMembers(MemberSearchDTO memberSearchDTO) {
		return memberDAO.getMembers(memberSearchDTO);
	}
	public int getMemberCnt(MemberSearchDTO memberSearchDTO) {
		return memberDAO.getCnt(memberSearchDTO);
	}
	
	//업주
	public List<HostDTO> getHosts(HostSearchDTO hostSearchDTO) {
		return hostDAO.getHosts(hostSearchDTO);
	}
	public int getHostCnt(HostSearchDTO hostSearchDTO) {
		return hostDAO.getCnt(hostSearchDTO);
	}
	
	//업체
	public List<LodgmentDTO> getLodgments(LodgmentSearchDTO lodgmentSearchDTO) {
		return lodgmentDAO.getLodgments(lodgmentSearchDTO);
	}
	public int getLodgmentCnt(LodgmentSearchDTO lodgmentSearchDTO) {
		return lodgmentDAO.getCnt(lodgmentSearchDTO);
	}
}
