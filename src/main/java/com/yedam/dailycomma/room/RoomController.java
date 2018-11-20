package com.yedam.dailycomma.room;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.dailycomma.host.HostDTO;
import com.yedam.dailycomma.host.HostService;
import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.lodgment.LodgmentSearchDTO;

import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class RoomController {

	@Autowired RoomService roomService;
	@Autowired LodgmentDTO lodgmentDTO;
    @Autowired RoomPostDTO roomPostDTO;
    @Autowired HostService hostService;

	/*건수조회 추후 토탈 이미지로 들어갈 예정*/
	@RequestMapping("detailRoom.do/{roomNo}")
	public String detailRoom(Model model,
							 @PathVariable String roomNo,
							 RoomDTO dto) {
		dto.setRoomNo(roomNo);
		model.addAttribute("getDetailRoom", roomService.getDetailRoom(dto));
		return "room/detailRoom";
	}

	/*숙박 업체에 대한 전체 객실 리스트 및 후기 리스트*/
    @RequestMapping("detailRooms.do/{lodgmentNo}")
    public String detailRooms(Model model,
    						 @PathVariable String lodgmentNo,	
                             @ModelAttribute("search") LodgmentSearchDTO dto,
                             HttpSession session) {

    	dto = (LodgmentSearchDTO)session.getAttribute("search");
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("login");
    	if(dto == null || dto.getCheckin() == null || dto.getCheckin().equals("")) {
    		dto = new LodgmentSearchDTO();
    		dto.setCheckin("2018-12-20");
    		dto.setCheckout("2018-12-21");    		
    	}
    	dto.setLodgmentNo(lodgmentNo);

        /*전체 이미지를 가져온다.*/
        StringBuffer str = new StringBuffer();
        List<RoomDTO> list = roomService.getAllimage(dto);
        for(RoomDTO r : list)
        {
        	if(r.getRoomImg() == null) {
        		r.setRoomImg("imageReady.jpg");
        	}
        	str.append(r.getRoomImg());
        }

		if(memberDTO == null){
			dto.setMemberNo("test");
		}else{
			dto.setMemberNo(memberDTO.getMemberNo());
		}

        /*숙박 업체에 대한 전체 객실 리스트*/
        model.addAttribute("getDetailRooms", roomService.getDetailRooms(dto));
        /*전체 이미지*/
        model.addAttribute("getAllImg" , str.toString());

        return "room/detailRoom";
    }

    /*숙박 업체에 대한 상세 후기*/
    @RequestMapping("postDetail.do/{postscriptNo}")
    public String detailPost(Model model,
                              @PathVariable String postscriptNo,
                              RoomPostDTO dto) {
        dto.setPostscriptNo(postscriptNo);
        model.addAttribute("getDetailPost", roomService.getDetailPost(dto));

        return "noTiles/room/detailPost";
    }
	
	@RequestMapping("/insertRoomForm.do")
	public String RoomForm() {
		return "room/registerRoom";
	}
	
	@RequestMapping(value="insertRoom.do", method=RequestMethod.POST)
	public void insertRoom(RoomDTO dto,
                             HttpSession session,
                             HttpServletResponse response,
                             HttpServletRequest request) throws IllegalStateException, IOException {
		response.setContentType("text/html; charset=UTF-8");

        String folder = session.getServletContext().getRealPath("/resources/images/lodgment");

        HostDTO hostDTO = (HostDTO)session.getAttribute("login");

		MultipartFile[] uploadFile = dto.getUploadFile();
		String filename = "";
		StringBuffer temp = new StringBuffer();
		for(int i=0; i<uploadFile.length; i++) {
			if(!uploadFile[i].isEmpty() && uploadFile[i].getSize() > 0) {
				filename = uploadFile[i].getOriginalFilename();
				//uploadFile[i].transferTo(new File("c:/upload",filename));			
				uploadFile[i].transferTo(new File(folder ,filename));
                temp.append(filename + ",");
/*				if( i == uploadFile.length-1 )
                    temp.append(filename);
				else
					 */
			}
		}

		dto.setRoomImg(temp.toString());
		dto.setLodgmentNo(hostDTO.getLodgmentNo());
		roomService.insertRoom(dto);
		String url = request.getContextPath() + "/insertRoomForm.do";
		PrintWriter out = response.getWriter();
		out.print("<script> alert('객실등록이 완료 되었습니다.'); location='"+ url +"';</script>");
		
		//return "redirect:insertRoomForm.do";
	}
}
