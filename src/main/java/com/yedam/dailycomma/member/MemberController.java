package com.yedam.dailycomma.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/insertMemberForm.do")
	public String insertMemberForm(Model model, MemberDTO dto) {
		return "member/memberSignup";
	}
	
	@RequestMapping("/insertMember.do")
        public String insertMember(Model model, MemberDTO dto) {
            model.addAttribute("member", memberService.insertMember(dto));
            return "home/home";
	}
}
