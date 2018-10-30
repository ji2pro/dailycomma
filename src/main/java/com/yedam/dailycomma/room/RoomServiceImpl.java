package com.yedam.dailycomma.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service //빈등록
public class RoomServiceImpl implements RoomService {
	
	//Log4jAdvice logAdvice = new Log4jAdvice();
	
	@Autowired RoomDAO dao;
	
	@Override
	public int insertHost(RoomDTO dto) {
		//logAdvice.beforeLog();
		//System.out.println(dao);
		return dao.insertHost(dto);
	}

	@Override
	public int updatetHost(RoomDTO dto) {
		//logAdvice.beforeLog();
		return 0;
	}

	@Override
	public int deleteHost(RoomDTO dto) {
		//logAdvice.beforeLog();
		return 0;
	}

	@Override
	public RoomDTO getHost(RoomDTO dto) {
		//logAdvice.beforeLog();
		return null;
	}	
}
