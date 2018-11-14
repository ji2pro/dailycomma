package com.yedam.dailycomma.management;

import java.util.List;



public interface ManagementService {
	

	public List<ManagementDTO> selectReservation(String lodgmentNo);
	
	public int deleteReserve(String[] reserveNo);

}
