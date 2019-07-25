package com.yedam.dailycomma.reservation;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.room.RoomDTO;

@Repository
public class ReservationDAOMybatis {	
	@Autowired SqlSessionTemplate mybatis;
	
	//전체조회
	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDTO) {
		return mybatis.selectList("reservation.getReservations",searchDTO);
	}
	//건수 조회
	public int getCnt(ReservationSearchDTO searchDTO) {
		return mybatis.selectOne("reservation.getCnt",searchDTO);
	}
	//단건 조회
	public int getReservation(ReservationDTO dto) {
		return mybatis.selectOne("reservation.getReservation", dto);
	}
	//등록
	public int insertReservation(ReservationDTO dto) {
		return mybatis.insert("reservation.insertReservation", dto);
	}
	//수정
	public int updateReservation(ReservationDTO dto) {
	
		return mybatis.update("reservation.updateReservation", dto);
	}
	//삭제
	public int deleteReservation(ReservationDTO dto) {
		return mybatis.delete("reservation.deleteReservation", dto);
	}
	
  	public Map<String,Object> getReserveInfo(String roomNo) {
  		return mybatis.selectOne("reservation.getReserveInfo", roomNo);
  	}
  	
  	public String getLocation(ReservationDTO dto) {
  		return mybatis.selectOne("reservation.getLocation", dto);
  	}
}
