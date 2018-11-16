package com.yedam.dailycomma.myPage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired MyPageDAOMybatis dao;


	public List<MyPageDTO> getReserves(MyPageDTO dto) {
		return dao.getReserves(dto);
	}
	public List<MyPageDTO> getPoints(MyPageDTO dto){
		return dao.getPoints(dto);
	}
	public List<MyPageDTO> getCountries(MyPageDTO dto){
		return dao.getCountries(dto);
	}
	@Override
	public List<MyPageDTO> cancelReserve(String reserveNo) {
		// TODO Auto-generated method stub
		return dao.cancelReserve(reserveNo);
	}
}
