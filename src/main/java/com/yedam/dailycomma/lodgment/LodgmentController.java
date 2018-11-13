package com.yedam.dailycomma.lodgment;


import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller
@SessionAttributes("search")
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
	public String getMainSearch(Model model,LodgmentSearchDTO dto) {
		//dto.setLodgmentType("A4");*/
		
		System.out.println("checkIn =========== : " + dto.getCheckin() + " checkOut ============ : " + dto.getCheckout());		
		dto.setDiffer(differenceDate(dto.getCheckin(), dto.getCheckout()));
		model.addAttribute("search", dto);			//session 저장
		model.addAttribute("lod",lodgmentService.getMainSearch(dto));
		return "lodgment/lodgmentSearch";		
	}
	
	@RequestMapping("/updateSearch.do")
	public String updateSearch(@ModelAttribute("search") LodgmentSearchDTO dto,
							   Model model) {
		dto.setDiffer(differenceDate(dto.getCheckin(), dto.getCheckout()));
		model.addAttribute("lod",lodgmentService.getMainSearch(dto));
		return "lodgment/lodgmentSearch";
	}
	
	private long differenceDate(String checkin, String checkout) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		long calDateDays = 0;
        
		try {
			Date FirstDate = format.parse(checkin);
			Date SecondDate = format.parse(checkout);
		    long calDate = FirstDate.getTime() - SecondDate.getTime(); 
		        
		    calDateDays = calDate / ( 24*60*60*1000); 
		        
		    calDateDays = Math.abs(calDateDays);
		        
		    System.out.println("두 날짜의 날짜 차이: "+calDateDays);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}        
		return calDateDays;
	}
	
}
