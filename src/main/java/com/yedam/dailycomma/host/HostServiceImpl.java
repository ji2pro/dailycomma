package com.yedam.dailycomma.host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service //빈등록
public class HostServiceImpl implements HostService {
	
	//Log4jAdvice logAdvice = new Log4jAdvice();
	
	@Autowired HostDAO dao;
	
	@Override
	public int insertHost(HostDTO dto) {
		//logAdvice.beforeLog();
		//System.out.println(dao);
		return dao.insertHost(dto);
	}

	@Override
	public int updatetHost(HostDTO dto) {
		//logAdvice.beforeLog();
		return 0;
	}

	@Override
	public int deleteHost(HostDTO dto) {
		//logAdvice.beforeLog();
		return 0;
	}

	@Override
	public HostDTO getHost(HostDTO dto) {
		//logAdvice.beforeLog();
		return null;
	}

	@Override
	public List<HostDTO> getHosts(HostSearchDTO searchDTO) {
		//logAdvice.beforeLog();
		return null;
	}

	@Override
	public int getCnt(HostSearchDTO searchDTO) {
		//logAdvice.beforeLog();
		return 0;
	}	
}
