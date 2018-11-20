package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.yedam.dailycomma.host.HostDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpOutputMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;

@Controller
public class ManagementController {
	
	//사장님 예약자 리스트 managementList.do 관련 부분 컨트롤러!!
	@Autowired ManagementService service;
	@Autowired StatsService statsService;
	
	private String[] reserveNo;

	@RequestMapping("/managementList.do")
	public String management(Model model) {
		//logger.info("home");
		String lodgmentNo = "LOD1";
		List<ManagementDTO> memberList = service.selectReservation(lodgmentNo);
		model.addAttribute("memberList", memberList);
		return "management/managementList";
	}
		
	//체크박스 선택 뒤 취소버튼 예약자 삭제 시험중 
	@RequestMapping("/deleteReserve.do") 
	public String deleteReserve(@RequestParam(value="reserveNo", defaultValue="empty") String[] reserveNo, 
								HttpSession session){
		
		if(!reserveNo[0].equals("empty")) {
			service.deleteReserve(reserveNo);
		}		
		return "redirect:/managementList.do";
	}
	
	//통계 뷰 페이지
	@RequestMapping("/stats.do") 
	public String stats(Model model, ManagementDTO dto) {
		List<ManagementDTO> statsList = statsService.selectRoomList(dto);
		List<ManagementDTO> totalList = statsService.selectTotalList(dto);
		model.addAttribute("statsList", statsList);
		model.addAttribute("totalList", totalList);
		return "/management/stats";
	}
		
	//구글차트 stats.do 관련 부분 컨트롤러!!
	//월별수익금액
	
	@RequestMapping("/getStatsChart.do") //차트 데이터
	@ResponseBody
	public List<Map<String, Object>> getStatsChart(@RequestParam String year) {
		System.out.println("stats=================="+ year);
		
		return statsService.getStatsChart(year);
	}
		
	//월별객실예약건수
	@RequestMapping("/getReserveChart.do")
	@ResponseBody
	public List<Map<String, Object>> getReserveChart(@RequestParam String year) {
		System.out.println("reserve=================="+ year);
		return statsService.getReserveChart(year); 
	}
	
	//등록한 객실 목록
	@RequestMapping("/lodgmentList.do")
	public String getLodgments(Model model,HttpSession session) {

        HostDTO dto = (HostDTO)session.getAttribute("login");

		model.addAttribute("lodgmentList", service.getLodgments(dto.getHostId()));
		model.addAttribute("roomList", service.getRooms(dto.getHostId()));

		return "management/lodgmentList";
	}
}
