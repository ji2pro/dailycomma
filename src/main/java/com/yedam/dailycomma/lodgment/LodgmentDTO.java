package com.yedam.dailycomma.lodgment;

import org.springframework.stereotype.Repository;

@Repository
public class LodgmentDTO {

	private String lodgmentNo;		//숙박업체 번호
	private String company;			//숙박업체명
	private String address;			//숙박업체 주소
	private String location;		//숙박업체 지역
	private String lodgmentState;	//업주승인
	private String lodgmentType;	//숙박유형
	private String lodgmentImg;		//업체이미지
	private String lodgmentInfo;	//업체정보
	private String avgGrade;		//평균평점
	private String peopleCnt;		//평가인원수
	
		

	public String getAvgGrade() {
		return avgGrade;
	}
	public void setAvgGrade(String avgGrade) {
		this.avgGrade = avgGrade;
	}
	public String getPeopleCnt() {
		return peopleCnt;
	}
	public void setPeopleCnt(String peopleCnt) {
		this.peopleCnt = peopleCnt;
	}
	public String getLodgmentNo() {
		return lodgmentNo;
	}
	public void setLodgmentNo(String lodgmentNo) {
		this.lodgmentNo = lodgmentNo;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLodgmentState() {
		return lodgmentState;
	}
	public void setLodgmentState(String lodgmentState) {
		this.lodgmentState = lodgmentState;
	}
	public String getLodgmentType() {
		return lodgmentType;
	}
	public void setLodgmentType(String lodgmentType) {
		this.lodgmentType = lodgmentType;
	}
	public String getLodgmentImg() {
		return lodgmentImg;
	}
	public void setLodgmentImg(String lodgmentImg) {
		this.lodgmentImg = lodgmentImg;
	}
	public String getLodgmentInfo() {
		return lodgmentInfo;
	}
	public void setLodgmentInfo(String lodgmentInfo) {
		this.lodgmentInfo = lodgmentInfo;
	}
	
}
