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

public interface AdminService {
	//회원
	public List<MemberDTO> getMembers(MemberSearchDTO memberSearchDTO);
	public int getMemberCnt(MemberSearchDTO memberSearchDTO);
	//업주
	public List<HostDTO> getHosts(HostSearchDTO hostSearchDTO);
	public int getHostCnt(HostSearchDTO hostSearchDTO);
	//업체(숙소)
	public List<LodgmentDTO> getLodgments(LodgmentSearchDTO lodgmentSearchDTO);
	public int getLodgmentCnt(LodgmentSearchDTO lodgmentSearchDTO);
	//객실
	/*public List<RoomDTO> getDetailRooms(RoomSearchDTO roomSearchDTO);*/
	//예약 내역
	public List<ReservationDTO> getReservations(ReservationSearchDTO reservationSearchDTO);
	public int getReservationCnt(ReservationSearchDTO reservationSearchDTO);
	//캐스트
	/*public List<TourDTO> getCasts(TourSearchDTO tourSearchDTO);
	public int getCastCnt(TourSearchDTO tourSearchDTO);*/
}
