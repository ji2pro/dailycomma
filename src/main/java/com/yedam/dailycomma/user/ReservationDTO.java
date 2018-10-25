package com.yedam.dailycomma.user;

public class ReservationDTO {
	//예약
	private String reserveNo;		//예약번호
	private String lodgmentNo;		//숙박업체번호
	private String memberNo;		//회원번호
	private String roomNo;			//객실번호
	private String reserveDate;		//예약날짜
	private String reservePrice;	//예약가격
	private String reservePeople;	//예약인원
	private String checkin;			//체크인날짜
	private String checkout;		//체크아웃날짜
	private String reservePoints;	//예약포인트
	private String reserveState;	//예약상태
	
	
	public String getReserveNo() {
		return reserveNo;
	}
	public void setReserveNo(String reserveNo) {
		this.reserveNo = reserveNo;
	}
	public String getLodgmentNo() {
		return lodgmentNo;
	}
	public void setLodgmentNo(String lodgmentNo) {
		this.lodgmentNo = lodgmentNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}
	public String getReservePrice() {
		return reservePrice;
	}
	public void setReservePrice(String reservePrice) {
		this.reservePrice = reservePrice;
	}
	public String getReservePeople() {
		return reservePeople;
	}
	public void setReservePeople(String reservePeople) {
		this.reservePeople = reservePeople;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getReservePoints() {
		return reservePoints;
	}
	public void setReservePoints(String reservePoints) {
		this.reservePoints = reservePoints;
	}
	public String getReserveState() {
		return reserveState;
	}
	public void setReserveState(String reserveState) {
		this.reserveState = reserveState;
	}
	
	@Override
	public String toString() {
		return "ReservationDTO [reserveNo=" + reserveNo + ", lodgmentNo=" + lodgmentNo + ", memberNo=" + memberNo
				+ ", roomNo=" + roomNo + ", reserveDate=" + reserveDate + ", reservePrice=" + reservePrice
				+ ", reservePeople=" + reservePeople + ", checkin=" + checkin + ", checkout=" + checkout
				+ ", reservePoints=" + reservePoints + ", reserveState=" + reserveState + "]";
	}	
}
