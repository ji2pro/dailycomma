package com.yedam.dailycomma.myPage;

import java.util.List;

import com.yedam.dailycomma.member.MemberDTO;

public interface MyPageService {

	public MemberDTO getMember(MemberDTO dto);
	
	public List<MyPageDTO> getReserves(MyPageDTO dto);
	
	public List<MyPageDTO> getPoints(MyPageDTO dto);
	
	public List<MyPageDTO> getCountries(MyPageDTO dto);
	
}
