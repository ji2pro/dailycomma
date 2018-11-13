package com.yedam.dailycomma.reservation;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.room.RoomDTO;

@Service //빈등록
public class ReservationServiceImpl implements ReservationService {

	//Log4jAdvice logAdvice = new Log4jAdvice();
	//LogAdvice logAdvice = new LogAdvice();
	//DI
	//@Autowired UserDAO dao;
	//@Autowired UserDAOSpring dao;
	@Autowired ReservationDAOMybatis dao;

	public int insertReservation(ReservationDTO dto) {
		return dao.insertReservation(dto); // 두번의 인설트를 만들어 일부러 에러를 만듬 트랜잭션 처리를 하게 되면 둘다 인설트가 되지 않게 한다.
	}

	public int getReservation(ReservationDTO dto) {
		//logAdvice.printLogging();	//횡단관심
		return dao.getReservation(dto);	//핵심관심
	}

	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDto) {
		//logAdvice.printLogging();	//횡단관심
		return dao.getReservations(searchDto);		//핵심관심
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

}
