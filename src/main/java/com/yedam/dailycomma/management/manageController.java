package com.yedam.dailycomma.management;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.dailycomma.reservation.ReservationDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class manageController {

	@RequestMapping("/stats.do")
	public String stats(Model model /*ReservationDTO dto*/) {
	
	
		return "management/stats";
//		return "user/main";
	}

}
