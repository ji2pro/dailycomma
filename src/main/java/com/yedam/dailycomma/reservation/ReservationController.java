package com.yedam.dailycomma.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomService;

@Controller
public class ReservationController {
	@Autowired RoomService roomService;   
	@Autowired ReservationService reservationService;
	
	//등록 폼
	@RequestMapping("/insertReservationForm.do")
	public String insertReservationForm(Model model, RoomDTO dto) {
		dto.setRoomNo("RO181818");
		model.addAttribute("room", reservationService.getReservation(dto));
		return "reservation/insertReservation";
	}
	
	//등록 처리
	@RequestMapping("/insertReservation.do")
	public String insertReservation(Model model, ReservationDTO dto) {		
//		model.addAttribute("reservation", reservationService.insertReservation(dto));
		return "home/home";
	}
}
