package com.yedam.dailycomma.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentService;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomService;

@Controller
public class ReservationController {
	@Autowired ReservationService reservationService;
	
	//등록 폼
	@RequestMapping(value="/reserveRoom/{roomNo}", method=RequestMethod.GET)
	public String insertReservationForm(Model model,
										HttpSession session,
										@PathVariable String roomNo
										) {
		
		String logincheck = (String)session.getAttribute("type");
		if(logincheck != null) {
			if(!logincheck.equals("member")) {
				model.addAttribute("msg","일반 회원만 예약이 가능합니다.");
				return "common/loginWarning";
			}
		}
		
		model.addAttribute("reserveInfo", reservationService.getReserveInfo(roomNo));
		return "reservation/insertReservation";
	}

	//등록 처리
	@RequestMapping("/insertReservation.do")
	public String insertReservation(Model model, ReservationDTO dto, HttpSession session) {
		reservationService.insertReservation(dto);

		String location = reservationService.getLocation(dto);
		
		LodgmentSearchDTO searchDTO = (LodgmentSearchDTO)session.getAttribute("search");
		searchDTO.setLocation(location);
		
		session.setAttribute("search", searchDTO);

		session.removeAttribute("search");
		
		model.addAttribute("location", location);
		return "reservation/afterPayment";
	}
	
	@RequestMapping("/insertReservationForm.do")
	public String insertReservation(HttpSession session, Model model) {		

		String logincheck = (String)session.getAttribute("type");
		if(logincheck != null) {
			if(!logincheck.equals("member")) {
				model.addAttribute("msg","일반 회원만 예약이 가능합니다.");
				return "common/loginWarning";
			}
		}
		
		return "reservation/insertReservation";
	}
	
	@RequestMapping("/after.do")
	public String after() {
		return "reservation/afterPayment";
	}
	
	
}
