package com.yedam.dailycomma.myPage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/point.do")
	public String getPoints(Model model, MyPageDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("memberLogin"))).getMemberEmail());
		model.addAttribute("point", myPageService.getPoints(dto));
		return "noTiles/myPage/point";
	}
	
	@RequestMapping("/reserve.do")
	public String getReserves(Model model, MyPageDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("memberLogin"))).getMemberEmail());
		model.addAttribute("reserve", myPageService.getReserves(dto));
		return "noTiles/myPage/reserve";
	}
	
	@RequestMapping("/country.do")
	public String getCountrys(Model model, MyPageDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("memberLogin"))).getMemberEmail());
		model.addAttribute("country", myPageService.getCountries(dto));
		return "noTiles/myPage/country";
	}
	@RequestMapping("updateMember.do")
	public String updateMember(Model model, MemberDTO dto, HttpSession session) {
		dto.setMemberEmail(((MemberDTO)(session.getAttribute("memberLogin"))).getMemberEmail());
		memberService.updateMember(dto);
		//model.addAttribute("member", memberService.updateMember(dto));
		return "redirect:/myPage.do";
	}
	
}
