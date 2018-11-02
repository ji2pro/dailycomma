package com.yedam.dailycomma.Mypage;

import java.util.List;

import com.yedam.dailycomma.member.MemberDTO;

public interface MypageService {

	public MemberDTO getMember(MemberDTO dto);
	
	public List<MypageDTO> getReserves(MypageDTO dto);
	
	public List<MypageDTO> getPoints(MypageDTO dto);
	
	public List<MypageDTO> getCountrys(MypageDTO dto);
	
}
