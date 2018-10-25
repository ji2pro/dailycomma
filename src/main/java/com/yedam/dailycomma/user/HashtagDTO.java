package com.yedam.dailycomma.user;

public class HashtagDTO {

	private String hashtagNo;		//해시태그번호
	private String lodgmentNo;		//숙박업체번호
	private String hashtagContent;	//해시태그 내용
	
	
	public String getHashtagNo() {
		return hashtagNo;
	}
	public void setHashtagNo(String hashtagNo) {
		this.hashtagNo = hashtagNo;
	}
	public String getLodgmentNo() {
		return lodgmentNo;
	}
	public void setLodgmentNo(String lodgmentNo) {
		this.lodgmentNo = lodgmentNo;
	}
	public String getHashtagContent() {
		return hashtagContent;
	}
	public void setHashtagContent(String hashtagContent) {
		this.hashtagContent = hashtagContent;
	}
	
	@Override
	public String toString() {
		return "HashtagDTO [hashtagNo=" + hashtagNo + ", lodgmentNo=" + lodgmentNo + ", hashtagContent="
				+ hashtagContent + "]";
	}
	
	
	
	
	
}
