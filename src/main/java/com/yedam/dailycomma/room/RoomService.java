package com.yedam.dailycomma.room;

public interface RoomService {

	//룸 상세정보
	public RoomDTO getDetailRoom(RoomDTO dto);
	
	//객실 등록
	public int insertRoom(RoomDTO dto);
}
