package com.yedam.dailycomma.room;

import org.springframework.stereotype.Repository;

@Repository
public class RoomPostDTO {
    private String postscriptContent;
    private String roomName;
    private String lodgmentNo;
    private String memberNick;
    private int grade;


    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
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

    @Override
    public String toString() {
        return "RoomPostDTO{" +
                "postscriptContent='" + postscriptContent + '\'' +
                ", roomName='" + roomName + '\'' +
                ", lodgmentNo='" + lodgmentNo + '\'' +
                ", memberNick='" + memberNick + '\'' +
                '}';
    }
}
