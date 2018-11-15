package com.yedam.dailycomma.myPage;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.io.IOException;

import javax.security.auth.login.LoginContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberService;

/*@SessionAttributes("member")*/
@Controller
public class MyPageController {
	
	@Autowired	MyPageService myPageService;
	@Autowired	MemberService memberService;

	@RequestMapping("/myPage.do")
	public String myPage(Model model, MemberDTO dto, HttpSession session) { // HttpSession session <-세션에 대한 정보를 다음
		//String email = ((MemberDTO)session.getAttribute("memberLogin")).getMemberEmail();
		//model.addAttribute("member", memberService.getMember(dto));
		return "myPage/myPage";
	}
	@RequestMapping("/point.do")	//해당 member에 대한 point조회
	public String getPoints(Model model, MyPageDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("login"))).getMemberEmail());
		model.addAttribute("point", myPageService.getPoints(dto));
		return "noTiles/myPage/point";
	}
	
	@RequestMapping("/reserve.do") //해당 member에 대한 reserve조회
	public String getReserves(Model model, MyPageDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("login"))).getMemberEmail());
		model.addAttribute("reserve", myPageService.getReserves(dto));
		return "noTiles/myPage/reserve";
	}
	
	@RequestMapping("/country.do") //해당 member에 대한 country조회
	public String getCountrys(Model model, MyPageDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("login"))).getMemberEmail());
		model.addAttribute("country", myPageService.getCountries(dto));
		return "noTiles/myPage/country";
	}
	@RequestMapping(value = "updateMember.do", method = RequestMethod.POST)
	public String updateMember(Model model, MemberDTO dto, HttpSession session) throws IOException{
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("login"))).getMemberEmail());
		MultipartFile uploadFile = dto.getUploadFile();
		String filename = uploadFile.getOriginalFilename();
		String folder = session.getServletContext().getRealPath("/resources/images/myPage");
		System.out.println(folder);
		System.out.println(filename);
		if(!uploadFile.isEmpty() && uploadFile.getSize() > 0 ) {
			try {
				/*uploadFile.transferTo(new File ("D:\\JSP\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\wtpwebapps\\dailycomma\\resources\\images\\myPage",filename));*/
				/*uploadFile.transferTo(new File ("D:/JSP/dailycomma/src/main/webapp/resources/images/myPage",filename));*/
				uploadFile.transferTo(new File (folder,filename));
				uploadFile.transferTo(new File ("D:/JSP/dailycomma/src/main/webapp/resources/images/myPage",filename));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			dto.setUploadFileName(filename);
			dto.setMemberImg(filename);
		} 
		memberService.updateMember(dto);
		MemberDTO memberDTO = memberService.getMember(dto);	//새로 업데이트한 값을 memberDTO에 적용
		session.setAttribute("login", memberDTO);	//세션에 새로 업데이트한 값을 memberDTO를 이용해 넣음.
		//model.addAttribute("member", memberService.updateMember(dto));
		return "redirect:/myPage.do";
	}
}
