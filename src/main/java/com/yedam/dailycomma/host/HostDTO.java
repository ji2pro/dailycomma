package com.yedam.dailycomma.host;

public class HostDTO {
	private String lodgmentNo;
	private String hostId;			//숙박업주 아이디
	private String hostEmail;		//숙박업주 이메일
	private String hostPw;			//숙박업주 비밀번호
	private String hostPhone;		//숙박업주 휴대폰연락처
	private String hostName;		//담당자
	private String address;			//숙박업체 주소
	private String businessNo;		//사업자 번호
	private String location;
	private String signupDate;
	private String lodgmentState;	//예약상태
	
	public String getLodgmentNo() {
		return lodgmentNo;
	}
	public void setLodgmentNo(String lodgmentNo) {this.lodgmentNo = lodgmentNo;}
	public String getLodgmentState() {
		return lodgmentState;
	}
	public void setLodgmentState(String lodgmentState) {
		this.lodgmentState = lodgmentState;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getHostId() {
		return hostId;
	}
	public void setHostId(String hostId) {
		this.hostId = hostId;
	}
	public String getHostEmail() {
		return hostEmail;
	}
	public void setHostEmail(String hostEmail) {
		this.hostEmail = hostEmail;
	}
	public String getHostPw() {
		return hostPw;
	}
	public void setHostPw(String hostPw) {
		this.hostPw = hostPw;
	}
	public String getHostPhone() {
		return hostPhone;
	}
	public void setHostPhone(String hostPhone) {
		this.hostPhone = hostPhone;
	}
	public String getHostName() {
		return hostName;
	}
	public void setHostName(String hostName) {
		this.hostName = hostName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBusinessNo() {
		return businessNo;
	}
	public void setBusinessNo(String businessNo) {
		this.businessNo = businessNo;
	}
	public String getSignupDate() {
		return signupDate;
	}
	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}
	@Override
	public String toString() {
		return "HostDTO [hostId=" + hostId + ", hostEmail=" + hostEmail + ", hostPw=" + hostPw + ", hostPhone="
				+ hostPhone + ", hostName=" + hostName + ", address=" + address + ", businessNo=" + businessNo + "]";
	}
		
	
}
