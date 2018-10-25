package com.yedam.dailycomma.comments;

public class CommentsDTO {
	private String commentNo;		//댓글 번호
	private String memberNo;		//회원 번호(FK)
	private String tourId;			//관광 ID(FK)
	private String commentContent;	//댓글 내용
	private String commentDate;		//댓글 작성일
	
	public String getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(String commentNo) {
		this.commentNo = commentNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getTourId() {
		return tourId;
	}
	public void setTourId(String tourId) {
		this.tourId = tourId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	@Override
	public String toString() {
		return "CommentsDTO [commentNo=" + commentNo + ", memberNo=" + memberNo + ", tourId=" + tourId
				+ ", commentContent=" + commentContent + ", commentDate=" + commentDate + "]";
	}
	
}
