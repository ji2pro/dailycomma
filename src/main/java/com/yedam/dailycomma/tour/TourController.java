package com.yedam.dailycomma.tour;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class TourController {
	@Autowired
	TourService tourService;
	
	@RequestMapping("/getTours.do")
	@ResponseBody
	public List<TourDTO> getTours() {
		TourSearchDTO dto = new TourSearchDTO();
		dto.setStart(1);
		dto.setEnd(10);
		return tourService.getTours(dto);		
	}
	
	@RequestMapping("/castListForm.do")
	public String castListForm() {	
		return "cast/castList";
	}
	
	@RequestMapping("/registerCastForm.do")
	public String registerCastForm() {
		return "cast/registerCast";
	}
	
	@RequestMapping("/insertTour.do")
	public String insertTour(TourDTO dto) throws IllegalStateException, IOException {
		
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
		dto.setTourImg(temp.toString());
		tourService.insertTour(dto);
		return "redirect:/registerCastForm.do";
	}
	
}
