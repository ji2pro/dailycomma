package com.yedam.dailycomma.Mypage;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.dailycomma.member.MemberDTO;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;
	
	@RequestMapping("/Mypage.do")
	public String myPage(Model model, MemberDTO dto) {
		return "Mypage/Mypage";

	}
	@RequestMapping("/point.do")
	public String getPoints(Model model, MypageDTO dto) {
		model.addAttribute("point", mypageService.getPoints(dto));
		return "noTiles/Mypage/point";
	}
	
	@RequestMapping("/reserve.do")
	public String getReserves(Model model, MypageDTO dto) {
		model.addAttribute("reserve", mypageService.getReserves(dto));
		return "noTiles/Mypage/reserve";
	}
	
	@RequestMapping("/country.do")
	public String getCountrys(Model model, MypageDTO dto) {
		model.addAttribute("country", mypageService.getCountrys(dto));
		return "noTiles/Mypage/country";
	}
	
	//model.addAttribute("member", memberService.myPage(dto));
	
	
}
