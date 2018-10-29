package com.yedam.dailycomma.room;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {

		
	@RequestMapping("/insertRoom.do")
	public String insertRoom() {
		//model.addAttribute("member", memberService.insertMember(dto));
		return "room/registRoom";
	}
}
