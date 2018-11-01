package com.yedam.dailycomma.management;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.dailycomma.reservation.ReservationDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagementController {

	@RequestMapping("/stats.do")
	public String stats(Model model /*ReservationDTO dto*/) {
	
		return "noTiles/management/stats";
//		return "user/main";
	}
	
	@RequestMapping("/managementList.do")
	public String managementList(Model model, ReservationDTO dto) {
	
		return "management/managementList";
//		return "user/main";
	}
	
	
/*	@RequestMapping("/managementList.do")
	    private String getUserList(@ModelAttribute ReservationDTO dto) throws Exception {
	        
	        //서비스에서 사용자 리스트 조회
	        List<ReservationDTO> userList = ReservationDTO(dto);
	 
	        //클라이언트로 값 전송을 위해 WrapperVO로 감싸기
	        WrapperVO rtnVO = new WrapperVO();
	        rtnVO.setAaData(userList);
	        
	        //json string으로 parsing
	        String jsonString = JsonUtil.objectToJsonString(rtnVO);
	        
	        return jsonString;
	    }*/
	 
/*	 public List<ReservationDTO> getReservations(ReservationSearchDTO searchDTO) {
	
			return mybatis.selectList("reservation.getReservations",searchDTO);
		}
	*/

}
