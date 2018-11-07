package com.yedam.dailycomma.room;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.lodgment.LodgmentDTO;

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

    public RoomPostDTO getDetailPost(RoomPostDTO dto){
        System.out.println("========숙박 업체 상세 후기 조회========");
	    return mybatis.selectOne("detailRoom.getDetailPost",dto);
    }

    public int insertRoom(RoomDTO dto) {
		return mybatis.insert("room.insertRoom", dto);
	}
    
    public List<RoomDTO> getRooms(RoomSearchDTO roomSearchDTO) {
        System.out.println("========객실들 조회(관리자)========");
        return mybatis.selectList("room.getRooms", roomSearchDTO);
    }
    //건수 조회
    public int getCnt(RoomSearchDTO roomSearchDTO) {
    	return mybatis.selectOne("room.getCnt", roomSearchDTO);
    }
}
