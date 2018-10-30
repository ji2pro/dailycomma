package com.yedam.dailycomma.room;

public class RoomDTO {

	private String roomNo;			//객실번호
	private String lodgmentNo;		//숙박업체번호
	private String roomPrice;		//가격
	private String roomCapa;		//최대 수용인원
	private String roomInfo;		//객실정보
	private String roomImg;			//객실이미지
	private String roomName;		//객실이름
	private String roomQuantity;	//객실수
	private String roomState;		//객실승인
	
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getLodgmentNo() {
		return lodgmentNo;
	}
	public void setLodgmentNo(String lodgmentNo) {
		this.lodgmentNo = lodgmentNo;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomCapa() {
		return roomCapa;
	}
	public void setRoomCapa(String roomCapa) {
		this.roomCapa = roomCapa;
	}
	public String getRoomInfo() {
		return roomInfo;
	}
	public void setRoomInfo(String roomInfo) {
		this.roomInfo = roomInfo;
	}
	public String getRoomImg() {
		return roomImg;
	}
	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomQuantity() {
		return roomQuantity;
	}
	public void setRoomQuantity(String roomQuantity) {
		this.roomQuantity = roomQuantity;
	}
	public String getRoomState() {
		return roomState;
	}
	public void setRoomState(String roomState) {
		this.roomState = roomState;
	}
	
	@Override
	public String toString() {
		return "RoomDTO [roomNo=" + roomNo + ", lodgmentNo=" + lodgmentNo + ", roomPrice=" + roomPrice + ", roomCapa="
				+ roomCapa + ", roomInfo=" + roomInfo + ", roomImg=" + roomImg + ", roomName=" + roomName
				+ ", roomQuantity=" + roomQuantity + ", roomState=" + roomState + "]";
	}	
}
