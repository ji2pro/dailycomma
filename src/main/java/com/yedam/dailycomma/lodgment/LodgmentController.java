package com.yedam.dailycomma.lodgment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LodgmentController {
	
	@Autowired //DI(Dependency Injection)
	HostService hostService; //컨테이너가 자동으로 UserDAO 를 생성해서 주입을 해준다. 즉 new가 필요없음
	
	/*@ModelAttribute("roleMap") //공통 구분. model.addAttribute("roleMap", map)과 같은 의미 
	//밑에 메서드가 실행되기전에 항상 먼저 실행되고 해당 메소드를 실행하고 view 페이지를 넘겨 준다.
	public Map<String, String> roleMap(){
		Map<String, String> map = new HashMap<String, String>();
		map.put("Admin", "관리자");
		map.put("User", "사용자");
		map.put("Super", "최고 관리자");
		
		return map;
	}
	
	@RequestMapping("/getUsers.do")
	public ModelAndView getUsers(ModelAndView mv, UserSearchDTO searchDTO, Paging paging) {
		
		//조회 할 레코드 건수
		paging.setPageUnit(3);
		
		//현재 페이지번호. 없으면 1page로 설정
		if(paging.getPage() == null) {
			paging.setPage(1);
		}		
		
		//전체 건수
		int total = userService.getCnt(searchDTO);
		paging.setTotalRecord(total);
		//model.addAttribute("paging",paging); //model은 request.setAttribute의 역할을 한다.
		mv.addObject("paging",paging);
		System.out.println(paging);
		//시작 마지막 레코드번호
		searchDTO.setStart(paging.getFirst()); //이렇게 넣어주면 getFirst()에서 계산을 해준다.
		searchDTO.setEnd(paging.getLast());
		//model.addAttribute("list", userService.getUsers(searchDTO));
		mv.addObject("list", userService.getUsers(searchDTO));
		
		mv.setViewName("user/getUsers");
		
		//return "user/getUsers";
		return mv;
		
	}
	//수정폼
	@RequestMapping("/updateUserForm.do")
	public String updateUserForm(Model model, UserDTO dto) {
		model.addAttribute("user", userService.getUser(dto));
		return "user/updateUser";
	}
	//수정처리
	@RequestMapping("/updateUser.do")
	public String updateUser(Model model,
			SessionStatus ss,
			UserDTO dto) {		
		model.addAttribute("user", userService.updatetUser(dto));
		ss.setComplete();
		return "redirect:/getUsers.do";
	}*/
	//등록폼
	@RequestMapping("/insertHostForm.do")
	public String insertUserForm() {
		return "lodgment/insertHost";
	}
	
	//등록처리
	@RequestMapping("/insertHost.do")
	public String insertUser(Model model, LodgmentDTO dto) {		
		model.addAttribute("lodgment", hostService.insertHost(dto));
		//return "redirect:/getUsers.do";
		return "home/home";
	}
}
