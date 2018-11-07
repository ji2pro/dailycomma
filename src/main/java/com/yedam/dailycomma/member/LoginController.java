package com.yedam.dailycomma.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller  //빈 등록, 서블릿이 호출하도록 설정
public class LoginController {
	
	@Autowired MemberService memberService;
	
	//로그인 폼
	@RequestMapping(value={"/memberlogin.do", "/in.do"}, method=RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	//로그인 처리
	@RequestMapping(value="/memberLogin.do", method=RequestMethod.POST)
	public String loginProc(@ModelAttribute("member") MemberDTO dto,
							HttpSession session) {
		MemberDTO memberDTO = memberService.getMember(dto);
		if(memberDTO == null || !memberDTO.getMemberPw().equals(dto.getMemberPw())) {
			return "redirect:/loginForm.do";
		} else {
			session.setAttribute("memberLogin", memberDTO);
			return "home/home";
		}
			
	}
	
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "member/memberLogin";
	}	
	
	//로그아웃 처리
	@RequestMapping("/memberLogout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home/home";
	}
}
