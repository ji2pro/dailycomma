package com.yedam.dailycomma.room;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoomDAOMybatis {
	
	@Autowired SqlSessionTemplate mybatis;

	public RoomDTO getDetailRoom(RoomDTO dto) {
		System.out.println("========객실 상세 조회========");
		return mybatis.selectOne("detailRoom.getDetailRoom",dto);
	}

	public List<RoomDTO> getDetailRooms(LodgmentDTO dto) {
            System.out.println("========객실들 상세 조회========");
        return mybatis.selectList("detailRoom.getDetailRooms",dto);
    }

	public List<RoomPostDTO> getDetailRoomPosts(LodgmentDTO dto) {
		System.out.println("========숙박 업체 후기 조회========");
		return mybatis.selectList("detailRoom.getDetailRoomPosts",dto);
	}

    public int insertRoom(RoomDTO dto) {
		return mybatis.insert("room.insertRoom", dto);
	}
}
