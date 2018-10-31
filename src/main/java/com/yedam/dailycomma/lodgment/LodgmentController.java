package com.yedam.dailycomma.lodgment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.dailycomma.host.HostService;


@Controller
public class LodgmentController {
	
	@Autowired //DI(Dependency Injection)
	HostService hostService; //컨테이너가 자동으로 UserDAO 를 생성해서 주입을 해준다. 즉 new가 필요없음
	
	@RequestMapping("lodgmentSearchForm.do")
	public String lodgmentSearchForm() {
		return "lodgment/lodgmentSearch";
	}

}
