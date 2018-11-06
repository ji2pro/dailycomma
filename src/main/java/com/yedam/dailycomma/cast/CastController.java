package com.yedam.dailycomma.cast;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.dailycomma.management.EmpService;
import com.yedam.dailycomma.management.ManagementDTO;
import com.yedam.dailycomma.management.ManagementService;
import com.yedam.dailycomma.reservation.ReservationDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;
import com.yedam.dailycomma.room.RoomDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CastController {

	/*	//구글차트 
		@Autowired EmpService empService;
		@RequestMapping("/detailCast.do")
		@ResponseBody
		public List<Map<String, Object>> getEmpChart() {
			
			return empService.getEmpChart();

		}*/
		
		@Autowired
		private ManagementService service;
	
		@RequestMapping("/detailCast.do")
		public String cast(Locale locale, Model model) throws Exception{

			//logger.info("home");
			
			/*List<ManagementDTO> memberList = service.selectReservation(dto);
			
			model.addAttribute("memberList", memberList);*/

			return "cast/detailCast";
		}
		

	


}
