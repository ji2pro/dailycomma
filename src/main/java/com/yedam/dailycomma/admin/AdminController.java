package com.yedam.dailycomma.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.dailycomma.common.Paging;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;
import com.yedam.dailycomma.room.RoomSearchDTO;
import com.yedam.dailycomma.tour.TourSearchDTO;

@Controller
public class AdminController {
	@Autowired AdminService adminService;
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin/admin";
	}
	
	//관리자 페이지 메인
	@RequestMapping(value= {"/member"}, method=RequestMethod.GET)
	public ModelAndView getMembers(ModelAndView mv,
								   MemberSearchDTO memberSearchDTO,
								   Paging paging
								   ) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getMemberCnt(memberSearchDTO);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		memberSearchDTO.setStart(paging.getFirst());
		memberSearchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getMembers(memberSearchDTO));
		mv.setViewName("noTiles/admin/member");
		return mv;
	}
	
	//관리자 멤버 아작스 호출 페이지
	@RequestMapping(value={"/member.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getMembers(MemberSearchDTO memberSearchDTO,
						  Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getMemberCnt(memberSearchDTO);
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		memberSearchDTO.setStart(paging.getFirst());
		memberSearchDTO.setEnd(paging.getLast());
		map.put("list", adminService.getMembers(memberSearchDTO));
		return map;
	}
		
	//멤버 - 삭제
	/*@RequestMapping(value="/member/{memberNo}", method=RequestMethod.DELETE)
	public HashMap<String, Object> deleteMember(@PathVariable String memberNo, MemberDTO dto) {
		dto.setMemberNo(memberNo);
		adminService.
		return map;
	}*/
	
	//업주 관리 탭
	@RequestMapping("/host")
	public ModelAndView getHosts(ModelAndView mv,
								 HostSearchDTO hostSearchDTO,
								 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getHostCnt(hostSearchDTO);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		hostSearchDTO.setStart(paging.getFirst());
		hostSearchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getHosts(hostSearchDTO));

		mv.setViewName("noTiles/admin/host");
		return mv;
	}
	
	// 업주 관리 아작스 호출 페이지
	@RequestMapping(value={"/host.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getHosts(HostSearchDTO hostSearchDTO,
			 			  Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getHostCnt(hostSearchDTO);
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		hostSearchDTO.setStart(paging.getFirst());
		hostSearchDTO.setEnd(paging.getLast());
		map.put("list", adminService.getHosts(hostSearchDTO));
		return map;
	}
	
	//숙소 관리 탭
	@RequestMapping(value="/lodgment",method=RequestMethod.GET)
	public ModelAndView getLodgments(ModelAndView mv,
								 	 LodgmentSearchDTO lodgmentSearchDTO,
								 	 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getLodgmentCnt(lodgmentSearchDTO);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		lodgmentSearchDTO.setStart(paging.getFirst());
		lodgmentSearchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getLodgments(lodgmentSearchDTO));
		
		mv.setViewName("noTiles/admin/lodgment");
		return mv;
	}
	
	// 숙소 관리 아작스 호출 페이지
	@RequestMapping(value={"/lodgment.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getLodgments(LodgmentSearchDTO lodgmentSearchDTO,
			  				Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getLodgmentCnt(lodgmentSearchDTO);
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		lodgmentSearchDTO.setStart(paging.getFirst());
		lodgmentSearchDTO.setEnd(paging.getLast());
		map.put("list", adminService.getLodgments(lodgmentSearchDTO));
		return map;
	}
	
	//숙소별 개별 객실(rooms) 정보
	@RequestMapping(value="/lodgment/{lodgmentNo}",method=RequestMethod.GET)
//	@ResponseBody
	public ModelAndView getEachRooms(@PathVariable String lodgmentNo,
									 ModelAndView mv,
									 RoomSearchDTO roomSearchDto,
									 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getRoomCnt(roomSearchDto);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		roomSearchDto.setStart(paging.getFirst());
		roomSearchDto.setEnd(paging.getLast());
		mv.addObject("list", adminService.getEachRooms(roomSearchDto));

		mv.setViewName("noTiles/admin/room");
		return mv;
	}
	
	// 숙소별 객실 목록(rooms) 아작스 호출 페이지
	@RequestMapping(value={"/lodgment/{lodgmentNo}.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getEachRooms(RoomSearchDTO roomSearchDto,
			  				Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getRoomCnt(roomSearchDto);
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		roomSearchDto.setStart(paging.getFirst());
		roomSearchDto.setEnd(paging.getLast());
		map.put("list", adminService.getEachRooms(roomSearchDto));
		return map;
	}
	
	//예약 내역 탭
	@RequestMapping("/reservation")
	public ModelAndView getReservations(ModelAndView mv,
								 	    ReservationSearchDTO reservationSearchDTO,
								 	    Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getReservationCnt(reservationSearchDTO);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		reservationSearchDTO.setStart(paging.getFirst());
		reservationSearchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getReservations(reservationSearchDTO));

		mv.setViewName("noTiles/admin/reservation");
		return mv;
	}
	
	// 예약 내역 아작스 호출 페이지
	@RequestMapping(value={"/reservation.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getReservations(ReservationSearchDTO reservationSearchDTO,
			  				   Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getReservationCnt(reservationSearchDTO);
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		reservationSearchDTO.setStart(paging.getFirst());
		reservationSearchDTO.setEnd(paging.getLast());
		map.put("list", adminService.getReservations(reservationSearchDTO));
		return map;
	}
	
	//투어(캐스트) 탭
	@RequestMapping("/tour")
	public ModelAndView getTours(ModelAndView mv,
	 	    					 TourSearchDTO tourSearchDTO,
	 	    					 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(3);
	
		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getTourCnt(tourSearchDTO);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);
	
		// 시작/마지막 레코드 번호
		tourSearchDTO.setStart(paging.getFirst());
		tourSearchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getTours(tourSearchDTO));
	
		mv.setViewName("noTiles/admin/tour");
		return mv;
	}
	
	// 투어(캐스트) 아작스 호출 페이지
	@RequestMapping(value={"/tour.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getTours(TourSearchDTO tourSearchDTO,
			  			Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(3);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getTourCnt(tourSearchDTO);
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		tourSearchDTO.setStart(paging.getFirst());
		tourSearchDTO.setEnd(paging.getLast());
		map.put("list", adminService.getTours(tourSearchDTO));
		return map;
	}
}
