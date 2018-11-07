package com.yedam.dailycomma.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.host.HostDAO;
import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostSearchDTO;
import com.yedam.dailycomma.lodgment.LodgmentDAO;
import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;
import com.yedam.dailycomma.member.MemberDAOMybatis;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberSearchDTO;
import com.yedam.dailycomma.reservation.ReservationDAOMybatis;
import com.yedam.dailycomma.reservation.ReservationDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;
import com.yedam.dailycomma.room.RoomDAOMybatis;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomSearchDTO;
import com.yedam.dailycomma.tour.TourDAO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired MemberDAOMybatis memberDAO;
	@Autowired HostDAO hostDAO;
	@Autowired LodgmentDAO lodgmentDAO;
	@Autowired RoomDAOMybatis roomDAO;
	@Autowired ReservationDAOMybatis reservationDAO;
	@Autowired TourDAO tourDAO;
	
	//회원
	public List<MemberDTO> getMembers(MemberSearchDTO memberSearchDTO) {
		return memberDAO.getMembers(memberSearchDTO);
	}
	public int getMemberCnt(MemberSearchDTO memberSearchDTO) {
		return memberDAO.getCnt(memberSearchDTO);
	}
	
	//업주
	public List<HostDTO> getHosts(HostSearchDTO hostSearchDTO) {
		return hostDAO.getHosts(hostSearchDTO);
	}
	public int getHostCnt(HostSearchDTO hostSearchDTO) {
		return hostDAO.getCnt(hostSearchDTO);
	}
	
	//업체(숙소)
	public List<LodgmentDTO> getLodgments(LodgmentSearchDTO lodgmentSearchDTO) {
		return lodgmentDAO.getLodgments(lodgmentSearchDTO);
	}
	public int getLodgmentCnt(LodgmentSearchDTO lodgmentSearchDTO) {
		return lodgmentDAO.getCnt(lodgmentSearchDTO);
	}

	//객실
	public List<RoomDTO> getRooms(RoomSearchDTO roomSearchDTO) {
		return roomDAO.getRooms(roomSearchDTO);
	}
	public int getRoomCnt(RoomSearchDTO roomSearchDTO) {
		return roomDAO.getCnt(roomSearchDTO);
	}

	//예약
	public List<ReservationDTO> getReservations(ReservationSearchDTO reservationSearchDTO) {
		return reservationDAO.getReservations(reservationSearchDTO);
	}
	public int getReservationCnt(ReservationSearchDTO reservationSearchDTO) {
		return reservationDAO.getCnt(reservationSearchDTO);
	}
	
	//캐스트(투어)
	/*public List<ReservationDTO> getCasts(TourSearchDTO tourSearchDTO) {
		return tourDAO.getCasts(tourSearchDTO);
	}
	public int getCastCnt(TourSearchDTO tourSearchDTO) {
		return tourDAO.getCnt(tourSearchDTO);
	}*/
}
