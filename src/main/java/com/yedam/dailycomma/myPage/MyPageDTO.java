package com.yedam.dailycomma.myPage;

public class MyPageDTO {
	private String reserveNo;
	private String reserveDate;
	private String company;
	private String roomName;
	private String checkIn;
	private String checkOut;
	private String checkDate;
	private String memberNo;
	private String reservePrice;
	private String reservePoints;
	private String memberPoint;
	private String roomPrice;
	private String memberEmail;
	private String reserveState;
	
		
	public String getReserveState() {
		return reserveState;
	}
	public void setReserveState(String reserveState) {
		this.reserveState = reserveState;
	}
	public String getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(String memberPoint) {
		this.memberPoint = memberPoint;
	}
	public String getReserveNo() {
		return reserveNo;
	}
	public void setReserveNo(String reserveNo) {
		this.reserveNo = reserveNo;
	}
	public String getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getCheckDate() {
		return checkDate;
	}
	public void setCheckDate(String checkDate) {
		this.checkDate = checkDate;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getReservePrice() {
		return reservePrice;
	}
	public void setReservePrice(String reservePrice) {
		this.reservePrice = reservePrice;
	}
	public String getReservePoints() {
		return reservePoints;
	}
	public void setReservePoints(String reservePoints) {
		this.reservePoints = reservePoints;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	@Override
	public String toString() {
		return "MyPageDTO [reserveNo=" + reserveNo + ", reserveDate=" + reserveDate + ", company=" + company
				+ ", roomName=" + roomName + ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", checkDate="
				+ checkDate + ", memberNo=" + memberNo + ", reservePrice=" + reservePrice + ", reservePoints="
				+ reservePoints + ", memberPoint=" + memberPoint + ", roomPrice=" + roomPrice + ", memberEmail="
				+ memberEmail + "]";
	}
}
