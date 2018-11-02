package com.yedam.dailycomma.Mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.member.MemberDTO;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired MypageDAOMybatis dao;

	@Override
	public MemberDTO getMember(MemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.getMember(dto);
	}

	@Override
	public List<MypageDTO> getReserves(MypageDTO dto) {
		return dao.getReserves(dto);
	}
	
	public List<MypageDTO> getPoints(MypageDTO dto){
		return dao.getPoints(dto);
	}
	public List<MypageDTO> getCountrys(MypageDTO dto){
		return dao.getCountrys(dto);
	}

}
