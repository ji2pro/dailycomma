package com.yedam.dailycomma.lodgment;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.dailycomma.host.HostDTO;

@Controller
public class LodgmentController {
	
	@Autowired //DI(Dependency Injection)
	LodgmentService lodgmentService; 
	
	@RequestMapping("lodgmentSearchForm.do")
	public String lodgmentSearchForm() {
		return "lodgment/lodgmentSearch";
	}
	
	@RequestMapping("/registerLodgmentForm.do")
	public String registerLodgment() {
		return "lodgment/registerLodgment";
	}	
	
	@RequestMapping(value="/registerLodgment.do" , method=RequestMethod.POST)
	public void registerLodgment(LodgmentDTO dto, 
								   HttpServletRequest request,
								   HttpServletResponse response,
								   HttpSession session,
								   @RequestParam(value="checkBox",defaultValue="empty" ,required=true)String []checkBox ) throws IllegalStateException, IOException {
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		HostDTO hostDTO = (HostDTO) session.getAttribute("login");
		LodgmentDTO lodgmentDTO = new LodgmentDTO();
		lodgmentDTO.setLodgmentNo(hostDTO.getLodgmentNo());
		dto = lodgmentService.getLodgment(lodgmentDTO);
		
		if(dto.getCompany() != null) {
			if(!dto.getCompany().equals("")) {
				String homeurl =  request.getContextPath() + "/";
				out.print("<script> alert('숙소가 이미 등록되어 있습니다.'); location='"+ homeurl +"';</script>");
				return;
			}
		}
		

		String folder = request.getSession().getServletContext().getRealPath("resources/images/lodgment");
		System.out.println("folder==========================" + folder);
		
		MultipartFile uploadFile = dto.getUploadFile();
		
		
		
		System.out.println("====================="+hostDTO.getLodgmentNo());
		String filename = "";
		if(!uploadFile.isEmpty() && uploadFile.getSize() > 0) {
			filename = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(folder ,filename));
			dto.setLodgmentImg(filename);	
			dto.setLodgmentNo(hostDTO.getLodgmentNo());	//임시 월래는 session으로 받아야함
			lodgmentService.setLodgment(dto);
		}
		
		
		if(checkBox != null && checkBox.length > 0 && !checkBox[0].equals("empty")) {
			HashtagDTO hashDTO = new HashtagDTO(); 
			hashDTO.setLodgmentNo(hostDTO.getLodgmentNo());
			for(String hash : checkBox) {
				hashDTO.setHashtagContent(hash);
				lodgmentService.insertHashTag(hashDTO);
			}				
		}
		
		String url = request.getContextPath() + "/registerLodgmentForm.do";
		
		out.print("<script> alert('숙소등록이 완료 되었습니다.'); location='"+ url +"';</script>");
	}
	

	
	@RequestMapping("/getMainSearch.do")
	public String getMainSearch(Model model,LodgmentSearchDTO dto,HttpSession session) {
		//dto.setLodgmentType("A4");*/
		
		if(dto == null) {
			dto = new LodgmentSearchDTO();
		}
		
		if(dto.getCheckin() == null || dto.getCheckout() == null) {
			try {
				SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
				Date currentTime = new Date();
				String time = format.format(currentTime);
				String nexttime;
				Calendar c = Calendar.getInstance();
				c.setTime(format.parse(time));
				c.add(Calendar.DATE, 1);  //하루를 더해준다.
				nexttime = format.format(c.getTime());  // nexttime는 하루를 더한 날짜
				dto.setCheckin(time);
				dto.setCheckout(nexttime);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
		dto.setDiffer(differenceDate(dto.getCheckin(), dto.getCheckout()));
		session.setAttribute("search", dto);
		//model.addAttribute("search", dto);			//session 저장
		
		List<LodgmentDTO> list = lodgmentService.getMainSearch(dto);
		
		
		for(int i=0; i<list.size(); i++) {
			list.get(i).setHashTag(lodgmentService.getHashTags(list.get(i)));
		}
		/*for(LodgmentDTO lod : list) {
			 lodgmentService.getHashTags(lod);
		}*/
		
		model.addAttribute("lod",list);
		return "lodgment/lodgmentSearch";		
	}
	
	@RequestMapping("/updateSearch.do")
	public String updateSearch(@ModelAttribute("search") LodgmentSearchDTO dto,
							   Model model,
							   HttpSession session) {
		dto.setDiffer(differenceDate(dto.getCheckin(), dto.getCheckout()));
		
		session.setAttribute("search", dto);
		List<LodgmentDTO> list = lodgmentService.getMainSearch(dto);
		
		for(int i=0; i<list.size(); i++) {
			list.get(i).setHashTag(lodgmentService.getHashTags(list.get(i)));
		}
		
		model.addAttribute("lod",list);
		
		return "lodgment/lodgmentSearch";
	}
	
	@RequestMapping("/hashTagSearch/{searchKeyword}")
	public String hashTagSearch(@ModelAttribute("search") LodgmentSearchDTO dto,
								@PathVariable String searchKeyword,
								Model model) {
		
		System.out.println("searchKeyword=========" + searchKeyword);
		dto.setSearchKeyword(transferHashTag(searchKeyword));
		
		List<LodgmentDTO> list = lodgmentService.getMainSearch(dto);
		
		for(int i=0; i<list.size(); i++) {
			list.get(i).setHashTag(lodgmentService.getHashTags(list.get(i)));
		}
		
		model.addAttribute("lod",list);
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
	
	private String transferHashTag(String hash) {
		if(hash.equals("주차가능")) return "E1";
		else if(hash.equals("파티룸")) return "E2";
		else if(hash.equals("24시간데스크")) return "E3";
		else if(hash.equals("객실내PC")) return "E4";
		else if(hash.equals("객실금연")) return "E5";
		else if(hash.equals("비즈니스")) return "E6";
		else if(hash.equals("글램핑")) return "E7";
		else if(hash.equals("VOD")) return "E8";
		else if(hash.equals("와이파이")) return "E9";
		else if(hash.equals("식사가능")) return "E10";
		else if(hash.equals("레스토랑")) return "E11";
		else if(hash.equals("바베큐")) return "E12";
		else if(hash.equals("매점/편의점")) return "E13";
		else if(hash.equals("수영장")) return "E14";
		else if(hash.equals("주방")) return "E15";
		else if(hash.equals("카페")) return "E16";
				
		return "E17";
	}
}
