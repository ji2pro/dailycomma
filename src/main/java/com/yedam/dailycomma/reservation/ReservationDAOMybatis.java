package com.yedam.dailycomma.reservation;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.room.RoomDTO;

@Repository
public class ReservationDAOMybatis {	
	@Autowired SqlSessionTemplate mybatis;
	
	//전체조회
	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDTO) {
		System.out.println("reservation mybatis 전체 조회========");
		return mybatis.selectList("reservation.getReservations",searchDTO);
	}
	//건수 조회
	public int getCnt(ReservationSearchDTO searchDTO) {
		return mybatis.selectOne("reservation.getCnt",searchDTO);
	}
	//단건 조회
	public int getReservation(ReservationDTO dto) {
		System.out.println("reservation mybatis 단건 조회========");
		return mybatis.selectOne("reservation.getReservation", dto);
	}
	//등록
	public int insertReservation(ReservationDTO dto) {
		System.out.println("reservation mybatis 등록========");
		return mybatis.insert("reservation.insertReservation", dto);
	}
	//수정
	public int updateReservation(ReservationDTO dto) {
		System.out.println("reservation mybatis 수정========");
		return mybatis.update("reservation.updateReservation", dto);
	}
	//삭제
	public int deleteReservation(ReservationDTO dto) {
		System.out.println("reservation mybatis 삭제========");
		return mybatis.delete("reservation.deleteReservation", dto);
	}
}
