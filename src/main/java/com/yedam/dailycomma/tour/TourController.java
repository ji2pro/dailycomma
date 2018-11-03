package com.yedam.dailycomma.tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TourController {
	@Autowired
	TourService tourService;
	
	@RequestMapping("/getTours.do")
	public String getTours(Model model, TourDTO dto) {
		model.addAttribute("tour",tourService.getTours());
		return "cast/castList";
	}
	
	@RequestMapping("/castListForm.do")
	public String castListForm() {	
		return "cast/castList";
	}
}
