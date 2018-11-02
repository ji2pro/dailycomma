package com.yedam.dailycomma.host;

import java.util.List;

import com.yedam.dailycomma.lodgment.LodgmentDTO;

public interface HostService {
	//등록
	public int insertHost(HostDTO dto);
	//수정
	public int updateHost(HostDTO dto);
	//삭제 
	public int deleteHost(HostDTO dto);
	//글 상세 조회
	public HostDTO getHost(HostDTO dto);
	//글 목록 조회
	public List<HostDTO> getHosts(HostSearchDTO searchDTO);
	//단건조회
	public int getCnt(HostSearchDTO searchDTO);
}
