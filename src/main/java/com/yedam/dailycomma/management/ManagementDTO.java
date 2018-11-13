package com.yedam.dailycomma.management;

public class ManagementDTO {
	 

    private String memberName;		//회원 이름
	private String memberEmail;		//회원 이메일
	private String reserveState;	//예약상태
	private String reserveDate;		//예약날짜
	private String reservePeople;	//예약인원
	private String roomName;		//객실이름
	private String reservePrice;	//예약가격
	private String checkin;			//체크인날짜
	private String checkout;		//체크아웃날짜
	private String reserveDays;		//예약일수
	private String totalPrice;		//총판매금액
	private String reservationNum;	//예약수
    private String[] reserveNo;		//예약번호
 
    
	
    public String[] getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(String[] reserveNo) {
		this.reserveNo = reserveNo;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getReservationNum() {
		return reservationNum;
	}

	public void setReservationNum(String reservationNum) {
		this.reservationNum = reservationNum;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getReserveState() {
		return reserveState;
	}

	public void setReserveState(String reserveState) {
		this.reserveState = reserveState;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getReservePeople() {
		return reservePeople;
	}

	public void setReservePeople(String reservePeople) {
		this.reservePeople = reservePeople;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getReservePrice() {
		return reservePrice;
	}

	public void setReservePrice(String reservePrice) {
		this.reservePrice = reservePrice;
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


	public String getReserveDays() {
		return reserveDays;
	}

	public void setReserveDays(String reserveDays) {
		this.reserveDays = reserveDays;
	}

	@Override
	public String toString() {
		return "ManagementDTO [memberName=" + memberName + ", memberEmail=" + memberEmail + ", reserveState="
				+ reserveState + ", reserveDate=" + reserveDate + ", reservePeople=" + reservePeople + ", roomName="
				+ roomName + ", reservePrice=" + reservePrice + ", checkin=" + checkin + ", checkout=" + checkout
				+ ", reserveDays=" + reserveDays + ", totalPrice=" + totalPrice + ", reservationNum=" + reservationNum
				+ "]";
	}

	

	

	
 
    
}


