package com.yedam.dailycomma.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

	public ReservationDTO getReservation(ReservationDTO dto) {
		//logAdvice.printLogging();	//횡단관심
		System.out.println("사용자 목록 조회");
		//int a = 5/0; //강제로 예외 발생
		return dao.getReservation(dto);	//핵심관심
	}

	public List<ReservationDTO> getReservations(ReservationSearchDTO searchDTO) {
		//int a = 5/0; //강제로 예외 발생
		//logAdvice.printLogging();	//횡단관심
		return dao.getReservations(searchDTO);		//핵심관심
	}

	public int updatetReservation(ReservationDTO dto) {
		return dao.updateReservation(dto);
	}

	public int deleteReservation(ReservationDTO dto) {
		return dao.deleteReservation(dto);
	}

	public int getCnt(ReservationSearchDTO searchDTO) {
		return dao.getCnt(searchDTO);
	}
	
}
