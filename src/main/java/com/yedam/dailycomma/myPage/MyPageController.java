package com.yedam.dailycomma.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.dailycomma.member.MemberDTO;

@Controller
public class MyPageController {
	
	@Autowired
	MyPageService myPageService;
	
	@RequestMapping("/myPage.do")
	public String myPage(Model model, MemberDTO dto) {
		return "myPage/myPage";

	}
	@RequestMapping("/point.do")
	public String getPoints(Model model, MyPageDTO dto) {
		model.addAttribute("point", myPageService.getPoints(dto));
		return "noTiles/myPage/point";
	}
	
	@RequestMapping("/reserve.do")
	public String getReserves(Model model, MyPageDTO dto) {
		model.addAttribute("reserve", myPageService.getReserves(dto));
		return "noTiles/myPage/reserve";
	}
	
	@RequestMapping("/country.do")
	public String getCountrys(Model model, MyPageDTO dto) {
		model.addAttribute("country", myPageService.getCountries(dto));
		return "noTiles/myPage/country";
	}
	
	//model.addAttribute("member", memberService.myPage(dto));
	
	
}
