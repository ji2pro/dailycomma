package com.yedam.dailycomma.reservation;

import java.util.List;

import com.yedam.dailycomma.room.RoomDTO;

public interface ReservationService {
	
	public int insertReservation(ReservationDTO dto);

	public int updatetReservation(ReservationDTO dto);

	public int deleteReservation(ReservationDTO dto);
	
	public int getReservation(ReservationDTO dto);
	
	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDto);

	public int getCnt(ReservationSearchDTO searchDto);
	
	
}
