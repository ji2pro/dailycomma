package com.yedam.dailycomma.management;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.dailycomma.management.EmpService;
import com.yedam.dailycomma.reservation.ReservationDTO;
import com.yedam.dailycomma.reservation.ReservationSearchDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagementController {

/*	@RequestMapping("/stats.do")
	public String stats(Model model ReservationDTO dto) {
	
		return "noTiles/management/stats";
//		return "user/main";
	}*/
	
	@RequestMapping("/managementList.do")
	public String managementList(Model model, ReservationDTO dto) {
	
		return "management/managementList";
//		return "user/main";
	}
	
		@Autowired EmpService empService;
		///getEmpChart.do
		@RequestMapping("/getEmpChart.do")
		@ResponseBody
		public List<Map<String, Object>> getEmpChart() {
			
			/*int a= 5/0;*/
			/*String a =null;
			a.toString();*/
			
			return empService.getEmpChart();

			//부서별 사원수 
		}
	
/*	 @RequestMapping("/getUserList.do")
	    private String getUserList(@ModelAttribute UserVO inVO) throws Exception {
	        
	        //서비스에서 사용자 리스트 조회
	        List<UserVO> userList = userMgmtSvc.selectUserList(inVO);
	 
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
