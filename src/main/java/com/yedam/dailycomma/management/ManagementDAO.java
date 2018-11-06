package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.dailycomma.reservation.ReservationDTO;

@Repository
public class ManagementDAO {
	
@Autowired SqlSessionTemplate mybatis;
	//empMapper.xml의 아이디 명과 EmpDAO 메서드 명을 같이 해주면 보기 쉽다.
	

	/*public List<ManagementDTO> selectReservation() throws Exception;*/
	public List<ManagementDTO> selectReservation(){
		return mybatis.selectList("management.selectReservation");
	}

}
