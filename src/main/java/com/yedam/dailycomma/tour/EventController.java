package com.yedam.dailycomma.tour;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class EventController {
	@Autowired
	TourService tourService;

	@RequestMapping(value="/respAPI")	//API json으로 땡겨오기
	public Map respAPI() throws UnsupportedEncodingException {
		String key = "2jy90iKvs%2FFYGqvelJS%2BKNHWt0Xpbr0fcPQNGmhxaSwPk4%2F3%2BAu5rq3oAdr9iQs0l5%2FiIcroom92NG5adjdDxw%3D%3D";
		String url ="http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?"
				+ "ServiceKey="+key+"&contentTypeId=12&numOfRows=10&pageNo=1&MobileOS=ETC&MobileApp=AppTest";
				
		RestTemplate rest = new RestTemplate();
		Map map = rest.getForObject(url, Map.class);
		System.out.println(map);
		return map;
	}
	
}
