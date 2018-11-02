package com.yedam.dailycomma.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomService;

@Controller
public class ReservationController {
//	@Autowired LodgmentService lodgmentService; 
	@Autowired RoomService roomService;
	@Autowired ReservationService reservationService;
	
	//등록 폼
	@RequestMapping(value="/insertReservationForm/{roomNo}", method=RequestMethod.GET)
	public String insertReservationForm(Model model,
										@PathVariable String roomNo,
										LodgmentDTO lDto,
										RoomDTO rDto) {
		//lDto.setLodgmentNo("1");
//		rDto.setRoomNo("RO181818");
		rDto.setRoomNo(roomNo);
		model.addAttribute("room", reservationService.getReservation(rDto));
		return "reservation/insertReservation";
	}
	
	//등록 처리
	@RequestMapping("/insertReservation.do")
	public String insertReservation(Model model, ReservationDTO dto) {		
//		model.addAttribute("reservation", reservationService.insertReservation(dto));
		return "home/home";
	}
}
