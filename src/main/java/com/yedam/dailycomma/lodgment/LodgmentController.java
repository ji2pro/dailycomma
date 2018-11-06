package com.yedam.dailycomma.lodgment;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.dailycomma.host.HostService;


@Controller
public class LodgmentController {
	
	@Autowired //DI(Dependency Injection)
	LodgmentService lodgmentService; 
	
	@RequestMapping("lodgmentSearchForm.do")
	public String lodgmentSearchForm() {
		return "lodgment/lodgmentSearch";
	}
	
	@RequestMapping(value="/registerLodgment.do", method=RequestMethod.POST)
	public String registerLodgment(LodgmentDTO dto, 
								   HttpServletRequest request,
								   @RequestParam(value="checkBox",defaultValue="empty" ,required=true)String []checkBox ) throws IllegalStateException, IOException {
		
/*		String folder = request.getSession().getServletContext().getRealPath("/upload");
		MultipartFile uploadFile = dto.getUploadFile();
		String filename = "";
		if(!uploadFile.isEmpty() && uploadFile.getSize() > 0) {
			filename = "hehe"+uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(folder ,filename));
			dto.setLodgmentImg(filename);	
			dto.setLodgmentNo("LOD49");	//임시 월래는 session으로 받아야함
			lodgmentService.setLodgment(dto);
		}*/
		
		
		if(checkBox != null && checkBox.length > 0 && !checkBox[0].equals("empty")) {
			HashtagDTO hashDTO = new HashtagDTO(); 
			hashDTO.setLodgmentNo("LOD50");
			for(String hash : checkBox) {
				hashDTO.setHashtagContent(hash);
				lodgmentService.insertHashTag(hashDTO);
			}				
		}
		
		return "redirect:/registerLodgmentForm.do";
	}
	
	@RequestMapping("/registerLodgmentForm.do")
	public String registerLodgment() {
		return "lodgment/registerLodgment";
	}	
	
	@RequestMapping("/getMainSearch.do")
	public String getMainSearch(Model model, LodgmentDTO dto) {
		dto.setLocation("서울");
		dto.setLodgmentType("A4");
		model.addAttribute("lod",lodgmentService.getMainSearch(dto));
		return "lodgment/lodgmentSearch";		
	}
}
