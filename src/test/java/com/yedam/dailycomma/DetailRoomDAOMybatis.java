package com.yedam.dailycomma;

import com.yedam.dailycomma.room.RoomDAOMybatis;
import com.yedam.dailycomma.room.RoomDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:servlet-context-test.xml")
public class DetailRoomDAOMybatis {

    @Autowired
    RoomDAOMybatis dao;

    @Autowired
    RoomDTO dto;

    @Test
    public void getUserTest() {
       dto.setRoomNo("RO181818");
       RoomDTO dto2 = dao.getDetailRoom(dto);

       System.out.println(dto2.getRoomNo() + " : "+ dto2.getRoomImg());
    }
}
