package com.yedam.dailycomma.postscript;

import org.springframework.stereotype.Repository;

@Repository
public class PostscriptDTO {
    //후기
    private String postscriptNo;            //후기번호
    private String lodgmentNo;                //숙박업체번호
    private String reserveNo;                //예약번호
    private String memberNo;                //회원번호
    private String postscriptContent;        //후기내용
    private String grade;                    //평점
    private String postscriptDate;            //후기작성일
    private String roomNo;
    private String memberNick;
    private String postscriptTitle;
    private String roomName;


    public String getLodgmentNo() {
        return lodgmentNo;
    }

    public void setLodgmentNo(String lodgmentNo) {
        this.lodgmentNo = lodgmentNo;
    }

    public String getReserveNo() {
        return reserveNo;
    }

    public void setReserveNo(String reserveNo) {
        this.reserveNo = reserveNo;
    }

    public String getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(String memberNo) {
        this.memberNo = memberNo;
    }

    public String getPostscriptContent() {
        return postscriptContent;
    }

    public void setPostscriptContent(String postscriptContent) {
        this.postscriptContent = postscriptContent;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getPostscriptDate() {
        return postscriptDate;
    }

    public void setPostscriptDate(String postscriptDate) {
        this.postscriptDate = postscriptDate;
    }

    public String getPostscriptNo() {
        return postscriptNo;
    }

    public void setPostscriptNo(String postscriptNo) {
        this.postscriptNo = postscriptNo;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public String getMemberNick() {
        return memberNick;
    }

    public void setMemberNick(String memberNick) {
        this.memberNick = memberNick;
    }

    public String getPostscriptTitle() {
        return postscriptTitle;
    }

    public void setPostscriptTitle(String postscriptTitle) {
        this.postscriptTitle = postscriptTitle;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    @Override
    public String toString() {
        return "PostscriptDTO [lodgmentNo=" + lodgmentNo + ", reserveNo=" + reserveNo + ", memberNo=" + memberNo
                + ", postscriptContent=" + postscriptContent + ", grade=" + grade + ", postscriptDate=" + postscriptDate
                + "]";
    }
}
