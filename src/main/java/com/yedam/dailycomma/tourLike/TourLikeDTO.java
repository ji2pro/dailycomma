package com.yedam.dailycomma.tourLike;

public class TourLikeDTO {
	private String tourId;		//관광 ID(FK)
	private String memberNo;	//회원 번호(FK)
	private String likeDate;	//선호 날짜
	
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
	public String getLikeDate() {
		return likeDate;
	}
	public void setLikeDate(String likeDate) {
		this.likeDate = likeDate;
	}
	@Override
	public String toString() {
		return "TourLikeDTO [tourId=" + tourId + ", memberNo=" + memberNo + ", likeDate=" + likeDate + "]";
	}
	
}
