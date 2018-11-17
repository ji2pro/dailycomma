package com.yedam.dailycomma.host;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.lodgment.LodgmentDTO;

@Repository
public class HostDAO {
	
	@Autowired SqlSessionTemplate mybatis;
	
	//전체조회
	public List<HostDTO> getHosts(HostSearchDTO searchDTO){
		System.out.println("host mybatis 전체 조회========");
		return mybatis.selectList("host.getHosts", searchDTO);
	}
	//건수 조회
	public int getCnt(HostSearchDTO searchDTO) {
		return mybatis.selectOne("host.getCnt", searchDTO);
	}
	
	//단건조회(점주로그인)
	public HostDTO getHost(HostDTO dto) {
		return mybatis.selectOne("login.getHost", dto);
	}
	
	//단건조회
	/*public LodgmentDTO getUser(LodgmentDTO dto){
		System.out.println("host mybatis 단건 조회========");
		return mybatis.selectOne("host.getHost", dto);
	}*/
	//등록
	public int insertHost(HostDTO dto) {
		System.out.println("host mybatis 등록========");
		return mybatis.insert("host.insertHost", dto);
	}
	//수정
	/*public int updateHost(HostDTO dto) {
		System.out.println("host mybatis 수정========");
		return mybatis.update("host.updateHost", dto);
	}*/
	//삭제
	public int deleteHost(HostDTO dto) {
		System.out.println("host mybatis 삭제========");
		return mybatis.delete("host.deleteHost", dto);
	}
	
	public int approveHost(HostSearchDTO dto) {
		return mybatis.update("host.approveHost", dto);
	}
	
	public int unapproveHost(HostSearchDTO dto) {
		return mybatis.update("host.unapproveHost", dto);
	}
}
