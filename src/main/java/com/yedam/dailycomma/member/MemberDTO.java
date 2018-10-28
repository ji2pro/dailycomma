package com.yedam.dailycomma.member;

public class MemberDTO {
	private String memberNo;		//회원 번호
	private String memberEmail;		//회원 이메일
	private String memberNick;		//회원 닉네임
	private String memberName;		//회원 이름
	private String memberPw;		//회원 비밀번호
	private String memberImg;		//회원 프로필 사진
	private String memberIntro;		//회원 소개
	private String memberPoint;		//회원 포인트
	private String signupDate;		//회원가입 날짜
	
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberNick() {
		return memberNick;
	}
	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberImg() {
		return memberImg;
	}
	public void setMemberImg(String memberImg) {
		this.memberImg = memberImg;
	}
	public String getMemberIntro() {
		return memberIntro;
	}
	public void setMemberIntro(String memberIntro) {
		this.memberIntro = memberIntro;
	}
	public String getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(String memberPoint) {
		this.memberPoint = memberPoint;
	}
	public String getSignupDate() {
		return signupDate;
	}
	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}
	@Override
	public String toString() {
		return "MemberDTO [memberNo=" + memberNo + ", memberEmail=" + memberEmail + ", memberNick="
				+ memberNick + ", memberName=" + memberName + ", memberPw=" + memberPw
				+ ", memberImg=" + memberImg + ", memberIntro=" + memberIntro + ", memberPoint="
				+ memberPoint + ", signupDate=" + signupDate + "]";
	}
	
}
