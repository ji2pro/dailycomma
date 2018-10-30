package com.yedam.dailycomma.room;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service 
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomDAOMybatis dao;
	
	@Override
	public RoomDTO getDetailRoom(RoomDTO dto) {
		System.out.println("객실 상세 조회");
		return dao.getDetailRoom(dto);
	}

	@Override
	public int insertRoom(RoomDTO dto) {
		// TODO Auto-generated method stub
		return dao.insertRoom(dto);
	}
	
	
}
