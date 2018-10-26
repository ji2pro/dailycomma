package com.yedam.dailycomma.lodgment;

import java.util.List;

public interface HostService {
	//등록
	public int insertHost(LodgmentDTO dto);
	//수정
	public int updatetHost(LodgmentDTO dto);
	//삭제 
	public int deleteHost(LodgmentDTO dto);
	//글 상세 조회
	public LodgmentDTO getHost(LodgmentDTO dto);
	//글 목록 조회
	public List<LodgmentDTO> getHosts(HostSearchDTO searchDTO);
	//단건조회
	public int getCnt(HostSearchDTO searchDTO);
}
