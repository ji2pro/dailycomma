package com.yedam.dailycomma.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.dailycomma.common.Paging;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;
import com.yedam.dailycomma.room.RoomSearchDTO;

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
	
	//업주 관리 탭
	@RequestMapping("/host")
	public ModelAndView getHosts(ModelAndView mv,
								 HostSearchDTO hostSearchDTO,
								 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(10);

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
	
	//숙소 관리 탭
	@RequestMapping("/lodgment")
	public ModelAndView getLodgments(ModelAndView mv,
								 	 LodgmentSearchDTO lodgmentSearchDTO,
								 	 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(10);

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
	
	//숙소 관리 탭
	@RequestMapping("/room")
	public ModelAndView getRooms(ModelAndView mv,
								 RoomSearchDTO roomSearchDTO,
								 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(10);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getRoomCnt(roomSearchDTO);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		roomSearchDTO.setStart(paging.getFirst());
		roomSearchDTO.setEnd(paging.getLast());
		mv.addObject("list", adminService.getRooms(roomSearchDTO));
		
		mv.setViewName("admin/room");
		return mv;
	}
	
	//예약 내역 탭
	@RequestMapping("/reservation")
	public ModelAndView getReservations(ModelAndView mv,
								 	    ReservationSearchDTO reservationSearchDTO,
								 	    Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(10);

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
}
