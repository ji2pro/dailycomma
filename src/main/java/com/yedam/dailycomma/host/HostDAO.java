package com.yedam.dailycomma.host;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.lodgment.LodgmentDTO;

@Repository
public class HostDAO {
	
	@Autowired SqlSessionTemplate mybatis;
	
/*	//전체조회
	public List<LodgmentDTO> getUsers(HostSearchDTO searchDTO){
		System.out.println("host mybatis 전체 조회========");
		return mybatis.selectList("host.getHosts",searchDTO);
	}
	//건수 조회
	public int getCnt(HostSearchDTO searchDTO) {
		return mybatis.selectOne("host.getCnt",searchDTO);
	}
	//단건조회
	public LodgmentDTO getUser(LodgmentDTO dto){
		System.out.println("host mybatis 단건 조회========");
		return mybatis.selectOne("host.getHost", dto);
	}*/
	//등록
	public int insertHost(HostDTO dto) {
		System.out.println("host mybatis 등록========");
		return mybatis.insert("host.insertHost", dto);
	}
/*	//수정
	public int updateUser(LodgmentDTO dto) {
		System.out.println("host mybatis 수정========");
		return mybatis.update("host.updateHost", dto);
	}
	//삭제
	public int deleteUser(LodgmentDTO dto) {
		System.out.println("host mybatis 삭제========");
		return mybatis.delete("user.deleteHost", dto);
	}*/
}
