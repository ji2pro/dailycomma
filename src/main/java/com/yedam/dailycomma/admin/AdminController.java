package com.yedam.dailycomma.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.dailycomma.common.Paging;
import com.yedam.dailycomma.member.MemberSearchDTO;

@Controller
public class AdminController {
	@Autowired AdminService adminService;
	
	@RequestMapping("/admin.do")
	public ModelAndView getMembers(ModelAndView mv, MemberSearchDTO searchDTO, Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getCnt(searchDTO);
		paging.setTotalRecord(total);
		mv.addObject("pagning", paging);

		// 시작/마지막 레코드 번호
		searchDTO.setStart(paging.getFirst());
		searchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getMembers(searchDTO));

		mv.setViewName("admin/admin");
		return mv;
	}
}
