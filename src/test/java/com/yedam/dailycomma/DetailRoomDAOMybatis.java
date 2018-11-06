package com.yedam.dailycomma;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.postscript.PostscriptDAOMybatis;
import com.yedam.dailycomma.postscript.PostscriptDTO;
import com.yedam.dailycomma.room.RoomDAOMybatis;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomPostDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:servlet-context-test.xml")
public class DetailRoomDAOMybatis {

    @Autowired
    RoomDAOMybatis dao;

    @Autowired
    RoomDTO dto;

    @Autowired
    LodgmentDTO ldto;

    @Autowired
    PostscriptDAOMybatis postdao;

    @Autowired
    PostscriptDTO pdto;

    @Test
    public void getDetailRoomTest() {
       dto.setRoomNo("RO181818");
       RoomDTO dto2 = dao.getDetailRoom(dto);

       System.out.println(dto2.getRoomNo() + " : "+ dto2.getRoomImg()+","+dto2.getRoomInfo());
    }
    @Test
    public void getDetailRoomsTest() {
        ldto.setLodgmentNo("LOD50");
        List<RoomDTO> dto2 = dao.getDetailRooms(ldto);

        for(RoomDTO list : dto2) {
            System.out.println(list.getRoomImg());
        }
    }


    @Test
    public void getDetailRoomPosts() {
        ldto.setLodgmentNo("LOD50");
        List<PostscriptDTO> pdto = postdao.getPostscriptList(ldto);

        for(PostscriptDTO list : pdto) {
            System.out.println(list.getGrade() + " " + list.getLodgmentNo() + " "+ list.getMemberNo());

        }
    }

    @Test
    public void getPostList() {
        ldto.setLodgmentNo("LOD50");
        List<RoomPostDTO> dto2 = dao.getDetailRoomPosts(ldto);

        for(RoomPostDTO list : dto2) {
            System.out.println(list.getPostscriptContent() + ", " + list.getRoomName()+", "+ list.getLodgmentNo()
                    +", " + list.getMemberNick());
        }
    }
}
