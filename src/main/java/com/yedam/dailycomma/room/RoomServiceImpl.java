package com.yedam.dailycomma.room;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomDAOMybatis dao;

	/*건수 조회 추후 토탈 이미지로 들어갈 예정*/
	@Override
	public RoomDTO getDetailRoom(RoomDTO dto) {
		return dao.getDetailRoom(dto);
	}

	/* 숙박 업체에 대한 전체 객실 리스트*/
	@Override
	public List<RoomDTO> getDetailRooms(LodgmentSearchDTO dto) {
		return dao.getDetailRooms(dto);
	}

    @Override
    public List<RoomDTO> getAllimage(LodgmentDTO dto) {
        return dao.getAllimage(dto);
    }

	/*숙박 업체에 대한 전체 후기 리스트*/
	@Override
	public List<RoomPostDTO> getDetailRoomPosts(LodgmentDTO dto) {return dao.getDetailRoomPosts(dto);}

    /*숙박 업체에 대한 상세 후기*/
    @Override
    public RoomPostDTO getDetailPost(RoomPostDTO dto) {
        return dao.getDetailPost(dto);
    }

    @Override
	public int insertRoom(RoomDTO dto) {
		// TODO Auto-generated method stub
		return dao.insertRoom(dto);
	}
}
