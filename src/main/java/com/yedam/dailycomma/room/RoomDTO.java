package com.yedam.dailycomma.room;

import java.util.Arrays;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;



@Repository
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
	private String enable;
	private String location;
	private MultipartFile[] uploadFile; //다중 파일시 배열로
	
	
    private String company;
    private String address;
    private String hostPhone;
    private String lodgmentType;

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEnable() {
		return enable;
	}
	public void setEnable(String enable) {
		this.enable = enable;
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

    public String getHostPhone() {
        return hostPhone;
    }

    public void setHostPhone(String hostPhone) {
        this.hostPhone = hostPhone;
    }

    public String getLodgmentType() {
        return lodgmentType;
    }

    public void setLodgmentType(String lodgmentType) {
        this.lodgmentType = lodgmentType;
    }

    public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
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

}
