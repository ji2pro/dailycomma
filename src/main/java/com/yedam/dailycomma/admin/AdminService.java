package com.yedam.dailycomma.admin;

import java.util.List;

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

public interface AdminService {
	//회원
	public List<MemberDTO> getMembers(MemberSearchDTO memberSearchDTO);
	public int getMemberCnt(MemberSearchDTO memberSearchDTO);
	public int deleteMember(MemberDTO dto);
	//업주
	public List<HostDTO> getHosts(HostSearchDTO hostSearchDTO);
	public int getHostCnt(HostSearchDTO hostSearchDTO);
	public int deleteHost(HostDTO dto);
	//업체(숙소)
	public List<LodgmentDTO> getLodgments(LodgmentSearchDTO lodgmentSearchDTO);
	public int getLodgmentCnt(LodgmentSearchDTO lodgmentSearchDTO);
	public int deleteLodgment(LodgmentDTO dto);
	//객실
	public List<RoomDTO> getRooms(RoomSearchDTO roomSearchDTO);
	public int getRoomCnt(RoomSearchDTO roomSearchDTO);
	public List<RoomDTO> getEachRooms(RoomSearchDTO roomSearchDTO);
	public int deleteRoom(RoomDTO dto);
	//예약 내역
	public List<ReservationDTO> getReservations(ReservationSearchDTO reservationSearchDTO);
	public int getReservationCnt(ReservationSearchDTO reservationSearchDTO);
	public int deleteReservation(ReservationDTO dto);
	//캐스트
	public List<TourDTO> getTours(TourSearchDTO tourSearchDTO);
	public int getTourCnt(TourSearchDTO tourSearchDTO);
	public int deleteTour(TourDTO dto);
}
