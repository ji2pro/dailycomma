package com.yedam.dailycomma.lodgment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.host.HostDTO;

@Repository
public class LodgmentDAO {
	@Autowired SqlSessionTemplate mybatis;
	
	//숙소 전체 조회
	public List<LodgmentDTO> getLodgments(LodgmentSearchDTO searchDTO){
		return mybatis.selectList("lodgment.getLodgments", searchDTO);
	}
	//건수 조회
	public int getCnt(LodgmentSearchDTO searchDTO) {
		return mybatis.selectOne("lodgment.getCnt", searchDTO);
	}
	//메인검색
	public List<LodgmentDTO> getMainSearch(LodgmentSearchDTO dto) {
		return mybatis.selectList("lodgment.getMainSearch", dto);
	}
	//숙박업체 등록
	public int setLodgment(LodgmentDTO dto) {
		return mybatis.update("lodgment.setLodgment", dto);
	}
	//숙소 상세정보(단건 조회)
	public LodgmentDTO getLodgment(LodgmentDTO dto) {
		return mybatis.selectOne("lodgment.getLodgment", dto);
	}
	
	public int insertHashTag(HashtagDTO dto) {
		return mybatis.insert("lodgment.insertHashTag", dto);
	}
	//삭제
	public int deleteLodgment(LodgmentDTO dto) {
		return mybatis.delete("lodgment.deleteLodgment", dto);
	}
}
