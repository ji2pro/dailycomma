package com.yedam.dailycomma.room;

import org.springframework.stereotype.Repository;

@Repository
public class RoomPostDTO {

    private String postscriptContent;
    private String roomName;
    private String lodgmentNo;
    private String memberNick;
    private String grade;
    private String postscriptNo;
    private String postscriptTitle;
    private String postscriptDate;

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getMemberNick() {
        return memberNick;
    }

    public void setMemberNick(String memberNick) {
        this.memberNick = memberNick;
    }

    public String getPostscriptContent() {
        return postscriptContent;
    }

    public void setPostscriptContent(String postscriptContent) {
        this.postscriptContent = postscriptContent;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getLodgmentNo() {
        return lodgmentNo;
    }

    public void setLodgmentNo(String lodgmentNo) {
        this.lodgmentNo = lodgmentNo;
    }

    public String getPostscriptNo() {
        return postscriptNo;
    }

    public void setPostscriptNo(String postscriptNo) {
        this.postscriptNo = postscriptNo;
    }

    public String getPostscriptTitle() {
        return postscriptTitle;
    }

    public void setPostscriptTitle(String postscriptTitle) {
        this.postscriptTitle = postscriptTitle;
    }

    public String getPostscriptDate() {
        return postscriptDate;
    }

    public void setPostscriptDate(String postscriptDate) {
        this.postscriptDate = postscriptDate;
    }

    @Override
    public String toString() {
        return "RoomPostDTO{" +
                "postscriptContent='" + postscriptContent + '\'' +
                ", roomName='" + roomName + '\'' +
                ", lodgmentNo='" + lodgmentNo + '\'' +
                ", memberNick='" + memberNick + '\'' +
                ", grade=" + grade +
                ", postscriptNo='" + postscriptNo + '\'' +
                ", postscriptTitle='" + postscriptTitle + '\'' +
                ", postscriptDate='" + postscriptDate + '\'' +
                '}';
    }
}
