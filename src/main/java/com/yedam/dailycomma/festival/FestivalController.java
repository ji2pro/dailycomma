package com.yedam.dailycomma.festival;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import java.net.URI;
import java.util.HashMap;
import java.util.Map;

@Controller
public class FestivalController {

    @RequestMapping("/festivalList.do")
    public String festivalList(){
        return "room/festivalList";
    }

    @RequestMapping("/detailFestival.do")
    public String detailFestival(){
        return "room/detailFestival";
    }

    @RequestMapping(value="/detailAPI/{contentId}")
    @ResponseBody
    public Map restAPI(@PathVariable String contentId){

        URI uri1 = URI.create("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?" +
                "serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D" +
                "&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&contentId="+contentId+"&contentTypeId=15&introYN=Y" +
                "&_type=json");
        URI uri2 = URI.create("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?" +
                "serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D" +
                "&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&contentId="+contentId+"&contentTypeId=15&detailYN=Y" +
                "&_type=json");
        URI uri3 = URI.create("http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?" +
                "serviceKey=dRWo2wKq2B%2FKrt7Y7XfVsQkh5Kd5K%2BblTUQR2rCFXPVLNO5ThHE%2BTgha3kfg4eAJP76aeHgLQqQOaSsj%2BC%2BKeg%3D%3D" +
                "&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&contentId="+contentId+"&imageYN=Y&sublmageYN=Y&_type=json");

        Map list = new HashMap();
        RestTemplate rest = new RestTemplate();
        Map restApi1 = rest.getForObject(uri1, Map.class);
        Map restApi2 = rest.getForObject(uri2, Map.class);
        Map restApi3 = rest.getForObject(uri3, Map.class);

        Map body1 = (Map)(((Map)(restApi1.get("response"))).get("body"));
        Map body2 = (Map)(((Map)(restApi2.get("response"))).get("body"));
        Map body3 = (Map)(((Map)(restApi3.get("response"))).get("body"));

        /*Map items = (Map)(body.get("items"));
        Map item = (Map)(items.get("item"));
        String agelimit = (String)item.get("agelimit");*/

        list.put("items1",body1);
        list.put("items2",body2);
        list.put("items3",body3);

        System.out.println(list);
        /*String value = new String(restApi.getBytes(), "ISO8859-1");*/

        /*return list;*/
        /*return rest.getForObject("", Map.class);*/

        return list;
    }
}
