package com.yedam.dailycomma.myPage;

import java.util.List;


public interface MyPageService {

	public List<MyPageDTO> getReserves(MyPageDTO dto);
	
	public List<MyPageDTO> getPoints(MyPageDTO dto);
	
	public List<MyPageDTO> getCountries(MyPageDTO dto);
	
}
