package com.yedam.dailycomma.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.host.HostDAO;
import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.member.MemberDAOMybatis;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired MemberDAOMybatis memberDAO;
	@Autowired HostDAO hostDAO;
	
	public List<MemberDTO> getMembers(MemberSearchDTO searchDTO) {
		return memberDAO.getMembers(searchDTO);
	}
	public List<HostDTO> getHosts(HostSearchDTO searchDTO) {
		return hostDAO.getHosts(searchDTO);
	}
	public int getMemberCnt(MemberSearchDTO searchDTO) {
		return memberDAO.getCnt(searchDTO);
	}
	public int getHostCnt(HostSearchDTO searchDTO) {
		return hostDAO.getCnt(searchDTO);
	}
}
