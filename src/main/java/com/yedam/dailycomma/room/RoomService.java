package com.yedam.dailycomma.room;

import java.util.List;

import com.yedam.dailycomma.lodgment.LodgmentDTO;

public interface RoomService {
	//등록
	public int insertHost(RoomDTO dto);
	//수정
	public int updatetHost(RoomDTO dto);
	//삭제 
	public int deleteHost(RoomDTO dto);
	//글 상세 조회
	public RoomDTO getHost(RoomDTO dto);
}
