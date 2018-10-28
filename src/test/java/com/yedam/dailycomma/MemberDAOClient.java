package com.yedam.dailycomma;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.dailycomma.member.MemberDAOMybatis;
import com.yedam.dailycomma.member.MemberDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:servlet-context-test.xml")

public class MemberDAOClient {
	@Autowired MemberDAOMybatis dao;
	
	@Test
	public void insertMemberTest() {
		MemberDTO dto = new MemberDTO();
		dto.setMemberEmail("a@aa");
		dto.setMemberName("name");
		dto.setMemberNick("nick");
		dto.setMemberPw("1234");
							
		System.out.println(dao.insertMember(dto) + " 건 성공");
	}
}
