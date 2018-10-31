package com.yedam.dailycomma.reservation;

import java.util.List;

public interface ReservationService {
	
	public int insertReservation(ReservationDTO dto);

	public int updatetReservation(ReservationDTO dto);

	public int deleteReservation(ReservationDTO dto);
	
	public ReservationDTO getReservation(ReservationDTO dto);
	
	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDTO);

	public int getCnt(ReservationSearchDTO searchDTO);
	
	
}
