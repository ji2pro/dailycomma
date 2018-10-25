package com.yedam.dailycomma.tour;

public class TourDTO {
	private String tourId;			//관광 ID
	private String memberNo;		//회원 번호(FK)
	private String tourName;		//관광지 명
	private String tourTitle;		//관광 제목
	private String tourContent;		//관광 내용
	private String tourImg;			//관광 이미지
	private String tourDate;		//관광 작성일
	private String tourLocation;	//관광 지역
	private String tourState;		//관광 승인(상태)
	
	public String getTourId() {
		return tourId;
	}
	public void setTourId(String tourId) {
		this.tourId = tourId;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public String getTourTitle() {
		return tourTitle;
	}
	public void setTourTitle(String tourTitle) {
		this.tourTitle = tourTitle;
	}
	public String getTourContent() {
		return tourContent;
	}
	public void setTourContent(String tourContent) {
		this.tourContent = tourContent;
	}
	public String getTourImg() {
		return tourImg;
	}
	public void setTourImg(String tourImg) {
		this.tourImg = tourImg;
	}
	public String getTourDate() {
		return tourDate;
	}
	public void setTourDate(String tourDate) {
		this.tourDate = tourDate;
	}
	public String getTourLocation() {
		return tourLocation;
	}
	public void setTourLocation(String tourLocation) {
		this.tourLocation = tourLocation;
	}
	public String getTourState() {
		return tourState;
	}
	public void setTourState(String tourState) {
		this.tourState = tourState;
	}
	
	@Override
	public String toString() {
		return "TourDTO [tourId=" + tourId + ", memberNo=" + memberNo + ", tourName=" + tourName + ", tourTitle="
				+ tourTitle + ", tourContent=" + tourContent + ", tourImg=" + tourImg + ", tourDate=" + tourDate
				+ ", tourLocation=" + tourLocation + ", tourState=" + tourState + "]";
	}
	
}
