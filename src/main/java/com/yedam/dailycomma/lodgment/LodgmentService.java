package com.yedam.dailycomma.lodgment;

import java.util.List;

public interface LodgmentService {
	//숙소메인검색
	public List<LodgmentDTO> getMainSearch(LodgmentSearchDTO dto);
	
	//숙박업체 등록
	public int setLodgment(LodgmentDTO dto);
	
	//숙박업체 단건 조회
	public LodgmentDTO getLodgment(LodgmentDTO dto);
	//삭제
	
	//해시태그 
	public int insertHashTag(HashtagDTO dto);
}
