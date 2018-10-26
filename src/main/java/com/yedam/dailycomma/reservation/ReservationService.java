package com.yedam.dailycomma.reservation;

import java.util.List;

public interface ReservationService {
	
	public int insertUser(ReservationDTO dto);

	public int updatetUser(ReservationDTO dto);

	public int deleteUser(ReservationDTO dto);
	
	public ReservationDTO getUser(ReservationDTO dto);
	
	public List<ReservationDTO> getUsers(ReservationSearchDTO searchDTO);

	public int getCnt(ReservationSearchDTO searchDTO);
	
	
}
