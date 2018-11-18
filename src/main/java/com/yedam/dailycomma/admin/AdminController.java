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
import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;
import com.yedam.dailycomma.reservation.ReservationDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomSearchDTO;
import com.yedam.dailycomma.tour.TourDTO;
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
		paging.setPageUnit(5);

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
	public Map<String,Object> getMembers(MemberSearchDTO memberSearchDTO,
						  Paging paging) {
		
		Map<String,Object> map = new HashMap<String, Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
	@RequestMapping(value="/member/{memberNo}", method=RequestMethod.DELETE)
	@ResponseBody
	public HashMap<String, Object> deleteMember(@PathVariable String memberNo, MemberDTO dto) {
		dto.setMemberNo(memberNo);
		adminService.deleteMember(dto);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	//업주 관리 탭
	@RequestMapping("/host")
	public ModelAndView getHosts(ModelAndView mv,
								 HostSearchDTO hostSearchDTO,
								 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
		
		Map map = new HashMap<String, Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
	
	//업주 - 삭제
	@RequestMapping(value="/host/{hostId}", method=RequestMethod.DELETE)
	@ResponseBody
	public HashMap<String, Object> deleteHost(@PathVariable String hostId, HostDTO dto) {
		dto.setHostId(hostId);
		adminService.deleteHost(dto);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	//숙소 관리 탭
	@RequestMapping(value="/lodgment",method=RequestMethod.GET)
	public ModelAndView getLodgments(ModelAndView mv,
								 	 LodgmentSearchDTO lodgmentSearchDTO,
								 	 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
		
		Map map = new HashMap<String, Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
	
	//숙소 - 삭제
	@RequestMapping(value="/lodgment/{lodgmentNo}", method=RequestMethod.DELETE)
	@ResponseBody
	public HashMap<String, Object> deleteHost(@PathVariable String lodgmentNo, LodgmentDTO dto) {
		dto.setLodgmentNo(lodgmentNo);
		adminService.deleteLodgment(dto);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	//숙소별 개별 객실(rooms) 정보
	@RequestMapping(value="/rooms/{lodgmentNo}",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView getEachRooms(@PathVariable String lodgmentNo,
									 ModelAndView mv,
									 RoomSearchDTO roomSearchDto,
									 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(5);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		int total = adminService.getRoomCnt(lodgmentNo);
		
		System.out.println("total======================="+total);
		paging.setTotalRecord(total);
		mv.addObject("paging", paging);

		// 시작/마지막 레코드 번호
		roomSearchDto.setStart(paging.getFirst());
		roomSearchDto.setEnd(paging.getLast());
		roomSearchDto.setLodgmentNo(lodgmentNo);
		mv.addObject("list", adminService.getEachRooms(roomSearchDto));

		mv.setViewName("noTiles/admin/room");
		return mv;
	}
	
	// 숙소별 객실 목록(rooms) 아작스 호출 페이지
	@RequestMapping(value={"/room.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getEachRooms(RoomSearchDTO roomSearchDto,
			  				Paging paging) {
		
		Map<String,Object> map = new HashMap<String, Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(5);

		// 현재 페이지 번호. 없으면 1page로 설정
		if (paging.getPage() == null) {
			paging.setPage(1);
		}
		// 전체 건수
		
		System.out.println("lodgmentNo============================" + roomSearchDto.getLodgmentNo());
		int total = adminService.getRoomCnt(roomSearchDto.getLodgmentNo());
		paging.setTotalRecord(total);
		map.put("paging", paging);

		// 시작/마지막 레코드 번호
		roomSearchDto.setStart(paging.getFirst());
		roomSearchDto.setEnd(paging.getLast());
		map.put("list", adminService.getEachRooms(roomSearchDto));
		return map;
	}
	
	//객실 - 삭제
	@RequestMapping(value="/room/{roomNo}", method=RequestMethod.DELETE)
	@ResponseBody
	public HashMap<String, Object> deleteRoom(@PathVariable String roomNo, RoomDTO dto) {
		dto.setRoomNo(roomNo);
		adminService.deleteRoom(dto);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	//예약 내역 탭
	@RequestMapping("/reservation")
	public ModelAndView getReservations(ModelAndView mv,
								 	    ReservationSearchDTO reservationSearchDTO,
								 	    Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
		paging.setPageUnit(5);

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
	
	//예약 내역 - 삭제
	@RequestMapping(value="/reservation/{reserveNo}", method=RequestMethod.DELETE)
	@ResponseBody
	public HashMap<String, Object> deleteReservation(@PathVariable String reserveNo, ReservationDTO dto) {
		dto.setReserveNo(reserveNo);
		adminService.deleteReservation(dto);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	//관광(캐스트) 탭
	@RequestMapping("/tour")
	public ModelAndView getTours(ModelAndView mv,
	 	    					 TourSearchDTO tourSearchDTO,
	 	    					 Paging paging) {
		// 조회할 레코드 건수
		paging.setPageUnit(5);
	
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
	
	// 관광(캐스트) 아작스 호출 페이지
	@RequestMapping(value={"/tour.ajax"}, method=RequestMethod.GET)
	@ResponseBody
	public Map getTours(TourSearchDTO tourSearchDTO,
			  			Paging paging) {
		
		Map map = new HashMap<String,Object>();
		// 조회할 레코드 건수
		paging.setPageUnit(5);

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
	
	//관광(캐스트) - 삭제
	@RequestMapping(value="/tour/{tourId}", method=RequestMethod.DELETE)
	@ResponseBody
	public HashMap<String, Object> deleteTour(@PathVariable String tourId, TourDTO dto) {
		dto.setTourId(tourId);
		adminService.deleteTour(dto);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", Boolean.TRUE);
		return map;
	}
	
	//점주승인
	@RequestMapping(value="/approveHost.ajax", method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String,Object> approveHost(HostSearchDTO dto){
		HashMap<String,Object> map =new HashMap<String,Object>();
		int check = adminService.approveHost(dto);
		if(check > 0)
			map.put("result", Boolean.TRUE);
		else
			map.put("result",Boolean.FALSE);
		return map;
	}
	
	//점주비승인
	@RequestMapping(value="/unapproveHost.ajax")
	@ResponseBody
	public HashMap<String,Object> unapproveHost(HostSearchDTO dto){
		HashMap<String,Object> map =new HashMap<String,Object>();
		int check = adminService.unapproveHost(dto);
		if(check > 0)
			map.put("result", Boolean.TRUE);
		else
			map.put("result",Boolean.FALSE);
		return map;
	}
	
	
	//캐스트승인
	@RequestMapping(value="/approveTour.ajax", method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String,Object> approveTour(TourSearchDTO dto){
		HashMap<String,Object> map =new HashMap<String,Object>();
		int check = adminService.approveTour(dto);
		if(check > 0)
			map.put("result", Boolean.TRUE);
		else
			map.put("result",Boolean.FALSE);
		return map;
	}
	
	//캐스트비승인
	@RequestMapping(value="/unapproveTour.ajax")
	@ResponseBody
	public HashMap<String,Object> unapproveTour(TourSearchDTO dto){
		HashMap<String,Object> map =new HashMap<String,Object>();
		int check = adminService.unapproveTour(dto);
		if(check > 0)
			map.put("result", Boolean.TRUE);
		else
			map.put("result",Boolean.FALSE);
		return map;
	}	
}
