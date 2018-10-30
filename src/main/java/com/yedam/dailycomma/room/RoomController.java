package com.yedam.dailycomma.room;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {

	@Autowired RoomService roomService;
		
	@RequestMapping("/detailRoom.do/{roomNo}")
	public String detailRoom(Model model, 
			@PathVariable String roomNo,  
			RoomDTO dto) {
		dto.setRoomNo(roomNo);
		model.addAttribute("getDetailRoom", roomService.getDetailRoom(dto));
		return "views/room/detailRoom";
	}
}
