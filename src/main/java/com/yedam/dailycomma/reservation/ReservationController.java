package com.yedam.dailycomma.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	@RequestMapping("insertReservationForm.do")
	public String insertReservation() {
		return "reservation/insertReservation";
	}
}
