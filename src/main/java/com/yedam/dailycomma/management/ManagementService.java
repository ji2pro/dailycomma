package com.yedam.dailycomma.management;

import java.util.List;

public interface ManagementService {
	public List<ManagementDTO> selectReservation(String lodgmentNo);
	public List<ManagementDTO> getLodgments(String hostId);
	public List<ManagementDTO> getRooms(String hostId);
	public int deleteReserve(String[] reserveNo);
}
