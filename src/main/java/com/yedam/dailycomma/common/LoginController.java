package com.yedam.dailycomma.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostService;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberService;


@Controller  //빈 등록, 서블릿이 호출하도록 설정
public class LoginController {
	
	@Autowired MemberService memberService;
	@Autowired HostService hostService;
	//로그인 폼
	//회원 로그인 처리
	@RequestMapping(value="/memberLogin.do", method=RequestMethod.POST)
	public String memberLogin(@ModelAttribute("member") MemberDTO dto,
							HttpSession session,
							@CookieValue(value="url",required=false)String url) {
		MemberDTO memberDTO = memberService.getMember(dto);
		if(memberDTO == null || !memberDTO.getMemberPw().equals(dto.getMemberPw())) {
			return "redirect:/memberLoginForm.do";
		} else {
			session.setAttribute("login", memberDTO);
			session.setAttribute("type", "member");
			
			int idx = url.lastIndexOf('/');
			url = url.substring(idx);
						
			return "redirect:/"+url;
		}
	}
	
	//점주 로그인 처리	
	@RequestMapping(value="/hostLogin.do", method=RequestMethod.POST)
	public String hostLogin(@ModelAttribute("host") HostDTO dto,
							HttpSession session,
							@CookieValue(value="url",required=false)String url) {
		HostDTO hostDTO = hostService.getHost(dto);
		if(hostDTO == null || !hostDTO.getHostPw().equals(dto.getHostPw())) {
			return "redirect:/hostLoginForm.do";
		} else {
			session.setAttribute("login", hostDTO);
			session.setAttribute("type", "host");
			
			int idx = url.lastIndexOf('/');
			url = url.substring(idx);
			
			return "redirect:/"+url;
		}
	}
	
	
	@RequestMapping("/memberLoginForm.do")
	public String memberLoginForm() {
		//System.out.println("page===================== "+page);
		return "member/memberLogin";
	}
	
	@RequestMapping("/hostLoginForm.do")
	public String hostLoginForm() {
		//System.out.println("page===================== "+page);
		return "host/hostLogin";
	}	
	
	//로그아웃 처리
	@RequestMapping("/memberLogout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home/home";
	}
}
