package com.yedam.dailycomma.tour;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class TourDTO {
	private String tourId;			//관광 ID
	private String memberNo;		//회원 번호(FK)
	private String memberName;		//회원 이름(FK)
	private String tourName;		//관광지 명
	private String tourTitle;		//관광 제목
	private String tourContent;		//관광 내용
	private String tourImg;			//관광 이미지
	private String tourDate;		//관광 작성일
	private String tourLocation;	//관광 지역
	private String tourState;		//관광 승인(상태)
	private int pageUnit;
	private MultipartFile[] uploadFile; //다중 파일시 배열로
	
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
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
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
	public int getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "TourDTO [tourId=" + tourId + ", memberNo=" + memberNo + ", memberName=" + memberName + ", tourName="
				+ tourName + ", tourTitle=" + tourTitle + ", tourContent=" + tourContent + ", tourImg=" + tourImg
				+ ", tourDate=" + tourDate + ", tourLocation=" + tourLocation + ", tourState=" + tourState
				+ ", pageUnit=" + pageUnit + ", uploadFile=" + Arrays.toString(uploadFile) + "]";
	}
}
