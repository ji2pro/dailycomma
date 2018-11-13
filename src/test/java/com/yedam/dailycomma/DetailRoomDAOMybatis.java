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
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
/*    @Test
    public void getDetailRoomsTest() {
        ldto.setLodgmentNo("LOD1");
        List<RoomDTO> dto2 = dao.getDetailRooms(ldto);

        for(RoomDTO list : dto2) {
            System.out.println(list.getRoomInfo());
        }
    }*/

    @Test
    public void insertPostscriptForm() {
        ldto.setLodgmentNo("LOD50");
        List<RoomDTO> dto2 = postdao.insertPostscriptForm(ldto);

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
    @Test
    public void restAPI() throws Exception{
        RestTemplate rest = new RestTemplate();
        URI uri = URI.create("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?" +
                "serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D" +
                "&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&contentId=2495836&contentTypeId=15&introYN=Y" +
                "&_type=json");
        URI uri2 = URI.create("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?" +
                "serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D" +
                "&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&contentId=2495836&contentTypeId=15&detailYN=Y" +
                "&_type=json");

        URI uri3 = URI.create("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?" +
                "serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D" +
                "&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&contentId=2495836&imageYN=Y&sublmageYN=Y&_type=json");

        Map list = new HashMap();

        Map restApi = rest.getForObject(uri, Map.class);
        Map restApi2 = rest.getForObject(uri2, Map.class);
        Map restApi3 = rest.getForObject(uri3, Map.class);
        Map body = (Map)(((Map)(restApi.get("response"))).get("body"));
        Map body2 = (Map)(((Map)(restApi2.get("response"))).get("body"));
        Map body3 = (Map)(((Map)(restApi3.get("response"))).get("body"));
        Map items = (Map)(body.get("items"));
        Map item = (Map)(items.get("item"));
        String agelimit = (String)item.get("agelimit");

        list.put("items1",body);
        list.put("items2",body2);
        list.put("items3",body3);

        System.out.println(list);
        /*String value = new String(restApi.getBytes(), "ISO8859-1");*/
        System.out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        System.out.println(restApi);
        System.out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        System.out.println(restApi2);
        System.out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
        System.out.println(restApi3);
        System.out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");

        /*return list;*/
        /*return rest.getForObject("", Map.class);*/
    }
}
