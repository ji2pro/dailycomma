package com.yedam.dailycomma.room;

import java.util.Arrays;

import com.yedam.dailycomma.member.MemberDTO;

public class RoomSearchDTO extends MemberDTO {
	//검색 조건
	private String searchCondition;
	private String searchKeyword;
	//페이징
	private Integer start;
	private Integer end;
	//숙소별 객실 조회
	private String lodgmentNo;
	//foreach
	private String[] ids;
	//정렬 기준
	private String sort;
	
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getEnd() {
		return end;
	}
	public void setEnd(Integer end) {
		this.end = end;
	}
	public String getLodgmentNo() {
		return lodgmentNo;
	}
	public void setLodgmentNo(String lodgmentNo) {
		this.lodgmentNo = lodgmentNo;
	}
	public String[] getIds() {
		return ids;
	}
	public void setIds(String[] ids) {
		this.ids = ids;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	@Override
	public String toString() {
		return "RoomSearchDTO [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", start="
				+ start + ", end=" + end + ", lodgmentNo=" + lodgmentNo + ", ids=" + Arrays.toString(ids) + ", sort="
				+ sort + "]";
	}
}
