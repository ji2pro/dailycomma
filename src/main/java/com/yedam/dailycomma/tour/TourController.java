package com.yedam.dailycomma.tour;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class TourController {
	@Autowired
	TourService tourService;
	
	@RequestMapping("/getCasts.do")
	@ResponseBody
	public List<TourDTO> getTours(TourDTO dto,HttpSession session) {
		//TourSearchDTO dto = new TourSearchDTO();
		LodgmentSearchDTO searchDTO = (LodgmentSearchDTO)session.getAttribute("search");
		if(searchDTO != null)
		if(searchDTO.getLocation() != null && !searchDTO.equals("")) {
			System.out.println("location=================="+searchDTO.getLocation());
			dto.setTourLocation(searchDTO.getLocation());
		}
		
		return tourService.getCasts(dto);		
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
	public void insertTour(TourDTO dto,
				            HttpServletResponse response,
				            HttpServletRequest request,
                            HttpSession session) throws IllegalStateException, IOException {
		response.setContentType("text/html; charset=UTF-8");	
        String folder = session.getServletContext().getRealPath("/resources/images/cast");

		MultipartFile[] uploadFile = dto.getUploadFile();
		String filename = "";
		StringBuffer temp = new StringBuffer();

		for(int i=0; i<uploadFile.length; i++) {
			if(!uploadFile[i].isEmpty() && uploadFile[i].getSize() > 0) {
				filename = uploadFile[i].getOriginalFilename();
				//uploadFile[i].transferTo(new File("c:/upload",filename));			
				uploadFile[i].transferTo(new File(folder ,filename));
				if( i == uploadFile.length-1 )
					temp.append(filename); 
				else
					temp.append(filename + ",");
			}
		}

        MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");

        dto.setMemberNo(memberDTO.getMemberNo());
		dto.setTourImg(temp.toString());
		tourService.insertTour(dto);
		
		String url = request.getContextPath() + "/castListForm.do";
		PrintWriter out = response.getWriter();
		out.print("<script> alert('캐스트 등록이 완료 되었습니다.'); location='"+ url +"';</script>");
		//return "redirect:/registerCastForm.do";
	}

}
