package com.yedam.dailycomma.host;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.dailycomma.host.HostService;


@Controller
public class HostController {
	
	@Autowired //DI(Dependency Injection)
	HostService hostService; //컨테이너가 자동으로 UserDAO 를 생성해서 주입을 해준다. 즉 new가 필요없음
	
	//등록폼
	@RequestMapping("/insertHostForm.do")
	public String insertHostForm() {
		return "host/hostSignup";
	}
	
	//등록처리
	@RequestMapping("/insertHost.do")
	public String insertHost(Model model, HostDTO dto) {		
		model.addAttribute("lodgment", hostService.insertHost(dto));
		//return "redirect:/getUsers.do";
		return "home/home";
	}
}
