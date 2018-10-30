package com.yedam.dailycomma.management;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagementController {

	@RequestMapping("/stats.do")
	public String stats(Model model /*ReservationDTO dto*/) {
	
		return "noTiles/management/stats";
//		return "user/main";
	}

}
