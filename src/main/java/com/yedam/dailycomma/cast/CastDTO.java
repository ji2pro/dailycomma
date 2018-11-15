package com.yedam.dailycomma.cast;

public class CastDTO {

    private String tourId;
    private String tourName;
    private String tourContent;
    private String tourTitle;
    private String tourImg;
    private String memberNo;
    private String tourDate;
    private String tourLocation;
    private String tourState;
    private String likeyn;
    private String totalLike;

    /*덧글*/
    private String commentContent;
    private String commentDate;
    private String cmemberNick;

    /*페이징*/
    private int start;
    private int end;
    private String rnum;
    private int totalCount;
    private int totalPage;

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public String getRnum() {
        return rnum;
    }

    public void setRnum(String rnum) {
        this.rnum = rnum;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
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

    public String getCmemberNick() {
        return cmemberNick;
    }

    public void setCmemberNick(String cmemberNick) {
        this.cmemberNick = cmemberNick;
    }

    public String getTotalLike() {
        return totalLike;
    }

    public void setTotalLike(String totalLike) {
        this.totalLike = totalLike;
    }

    public String getTourId() {
        return tourId;
    }

    public void setTourId(String tourId) {
        this.tourId = tourId;
    }

    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    public String getTourContent() {
        return tourContent;
    }

    public void setTourContent(String tourContent) {
        this.tourContent = tourContent;
    }

    public String getTourTitle() {
        return tourTitle;
    }

    public void setTourTitle(String tourTitle) {
        this.tourTitle = tourTitle;
    }

    public String getTourImg() {
        return tourImg;
    }

    public void setTourImg(String tourImg) {
        this.tourImg = tourImg;
    }

    public String getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(String memberNo) {
        this.memberNo = memberNo;
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

    public String getLikeyn() {
        return likeyn;
    }

    public void setLikeyn(String likeyn) {
        this.likeyn = likeyn;
    }

    @Override
    public String toString() {
        return "CastDTO{" +
                "tourId='" + tourId + '\'' +
                ", tourName='" + tourName + '\'' +
                ", tourContent='" + tourContent + '\'' +
                ", tourTitle='" + tourTitle + '\'' +
                ", tourImg='" + tourImg + '\'' +
                ", memberNo='" + memberNo + '\'' +
                ", tourDate='" + tourDate + '\'' +
                ", tourLocation='" + tourLocation + '\'' +
                ", tourState='" + tourState + '\'' +
                ", likeyn='" + likeyn + '\'' +
                ", totalLike='" + totalLike + '\'' +
                ", commentContent='" + commentContent + '\'' +
                ", commentDate='" + commentDate + '\'' +
                ", cmemberNick='" + cmemberNick + '\'' +
                '}';
    }
}
