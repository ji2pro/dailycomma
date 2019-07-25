package com.yedam.dailycomma.reservation;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.room.RoomDTO;

@Service //빈등록
public class ReservationServiceImpl implements ReservationService {


	@Autowired ReservationDAOMybatis dao;

	public int insertReservation(ReservationDTO dto) {
		return dao.insertReservation(dto); 
	}

	public int getReservation(ReservationDTO dto) {
		return dao.getReservation(dto);	
	}

	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDto) {
		return dao.getReservations(searchDto);		
	}

	public int updatetReservation(ReservationDTO dto) {
		return dao.updateReservation(dto);
	}

	public int deleteReservation(ReservationDTO dto) {
		return dao.deleteReservation(dto);
	}

	public int getCnt(ReservationSearchDTO searchDto) {
		return dao.getCnt(searchDto);
	}

	@Override
	public Map<String,Object> getReserveInfo(String roomNo) {
		// TODO Auto-generated method stub
		return dao.getReserveInfo(roomNo);
	}

	@Override
	public String getLocation(ReservationDTO dto) {
		// TODO Auto-generated method stub
		return dao.getLocation(dto);
	}

}
