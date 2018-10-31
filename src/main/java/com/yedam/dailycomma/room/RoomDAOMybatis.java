package com.yedam.dailycomma.room;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RoomDAOMybatis {
	
	@Autowired SqlSessionTemplate mybatis;

	public RoomDTO getDetailRoom(RoomDTO dto) {
		System.out.println("========객실 상세 조회========");
		return mybatis.selectOne("detailRoom.getDetailRoom",dto);
	}
	
	public int insertRoom(RoomDTO dto) {
		return mybatis.insert("room.insertRoom", dto);
	}
}
