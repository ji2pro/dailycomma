package com.yedam.dailycomma;

import com.yedam.dailycomma.myPage.MyPageDAOMybatis;
import com.yedam.dailycomma.myPage.MyPageDTO;

import org.junit.Ignore;
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
public class MypageDAOClient {

	@Autowired
	MyPageDAOMybatis dao;
	

	@Test
	public void testCancelReserve() {
		//dao.cancelReserve("RES1000000");
		HashMap<String,Object> map = new HashMap<String,Object>();
		List<MyPageDTO> list = dao.cancelReserve("RES1000000");
		
		for(MyPageDTO dto : list) {
			System.out.println(dto.getReserveNo());
		}
	}
}
