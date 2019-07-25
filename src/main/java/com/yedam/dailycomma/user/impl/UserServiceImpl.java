package com.yedam.dailycomma.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.dailycomma.user.UserDTO;
import com.yedam.dailycomma.user.UserSearchDTO;
import com.yedam.dailycomma.user.UserService;

@Service  //빈 등록
public class UserServiceImpl implements UserService {

	@Autowired UserDAOMybatis dao;
	
	public int insertUser(UserDTO dto) {

		return dao.insertUser(dto); 
	}
	public UserDTO getUser(UserDTO dto) {
		return dao.getUser(dto); 
	}
	public List<UserDTO> getUsers(UserSearchDTO searchDto) {
	
		System.out.println("사용자 목록 조회");
		return dao.getUsers(searchDto);  
	}
	public int updateUser(UserDTO dto) {
		return dao.updateUser(dto);
	}
	public int deleteUser(UserDTO dto) {
		return dao.deleteUser(dto);
	}
	@Override
	public int getCnt(UserSearchDTO searchDto) {
		return dao.getCnt(searchDto);
	}
}
