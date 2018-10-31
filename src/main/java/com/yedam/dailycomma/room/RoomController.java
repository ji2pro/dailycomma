package com.yedam.dailycomma.room;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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
	
	@RequestMapping("/insertRoomForm.do")
	public String RoomForm() {
		return "room/registerRoom";
	}
	
	@RequestMapping(value="/insertRoom.do", method=RequestMethod.POST)
	public String insertRoom(RoomDTO dto,HttpServletRequest request) throws IllegalStateException, IOException {
		
		MultipartFile[] uploadFile = dto.getUploadFile();
		String filename = "";
		StringBuffer temp = new StringBuffer();
		for(int i=0; i<uploadFile.length; i++) {
			if(!uploadFile[i].isEmpty() && uploadFile[i].getSize() > 0) {
				filename = uploadFile[i].getOriginalFilename();
				//uploadFile[i].transferTo(new File("c:/upload",filename));			
				uploadFile[i].transferTo(new File("c:/upload" ,filename));
				if( i == uploadFile.length-1 )
					temp.append(filename); 
				else
					temp.append(filename + ","); 
				
			}
		}
		dto.setRoomImg(temp.toString());
		roomService.insertRoom(dto);
		return "redirect:/insertRoomForm.do";
	}
	
}
