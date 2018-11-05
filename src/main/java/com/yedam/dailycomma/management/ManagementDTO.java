package com.yedam.dailycomma.management;

public class ManagementDTO {
	 
    private String id;
    private String pw;
    private String name;
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

	public String getId() {
        return id;
    }
 
    public void setId(String id) {
        this.id = id;
    }
 
    public String getPw() {
        return pw;
    }
 
    public void setPw(String pw) {
        this.pw = pw;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }

	public String getReserveDays() {
		return reserveDays;
	}

	public void setReserveDays(String reserveDays) {
		this.reserveDays = reserveDays;
	}

	@Override
	public String toString() {
		return "MemDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", memberName=" + memberName + ", memberEmail="
				+ memberEmail + ", reserveState=" + reserveState + ", reserveDate=" + reserveDate + ", reservePeople="
				+ reservePeople + ", roomName=" + roomName + ", reservePrice=" + reservePrice + ", checkin=" + checkin
				+ ", checkout=" + checkout + ", reserveDays=" + reserveDays + "]";
	}

	
 
    
}


