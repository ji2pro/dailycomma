package com.yedam.dailycomma.admin;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	@Autowired SqlSessionTemplate mybatis;
	
	public int deleteMembers(List<String> checkbox) {
		return mybatis.delete("admin.deleteMembers", checkbox);
	}
	
	public int deleteLodgments(List<String> checkbox) {
		return mybatis.delete("admin.deleteLodgments", checkbox);
	}
	
	public int deleteReserves(List<String> checkbox) {
		return mybatis.delete("admin.deleteReserves", checkbox);
	}
	public int deleteTours(List<String> checkbox) {
		return mybatis.delete("admin.deleteTours", checkbox);
	}
	
	public int deleteRooms(List<String> checkbox) {
		return mybatis.delete("admin.deleteRooms", checkbox);
	}
}

