package com.yedam.dailycomma.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	//등록 폼
	@RequestMapping("/admin.do")
	public String adminPage() {
		return "admin/admin";
	}
}
