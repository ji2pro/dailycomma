package com.yedam.dailycomma.postscript;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.member.MemberDTO;
import com.yedam.dailycomma.room.RoomDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class PostscriptController {

    @Autowired
    PostscriptService postscriptService;
    @Autowired
    LodgmentDTO lodgmentDTO;
    @Autowired
    PostscriptDTO postscriptDTO;

    //후기 등록 폼
    @RequestMapping("/insertPostscriptForm.do")
    public String insertPostscriptForm() {
        return "room/insertUserValid";
    }

    //후기 등록 폼
    @RequestMapping(value = "/postscriptForm/{lodgmentNo}", method = RequestMethod.GET)
    public List<RoomDTO> insertPostscriptForm(@PathVariable String lodgmentNo,
                                          LodgmentDTO dto) {
        dto.setLodgmentNo(lodgmentNo);

        //vo 안에는 insertComments를 했기 때문에 현재 seq와 작성 날짜가 들어가 있다. 이를 가지고 다시 단건 조회를 한다.
        return postscriptService.insertPostscriptForm(dto); //단건 조회
    }

    //후기 삭제
    @RequestMapping(value = "/deletePost/{postscriptNo}")
    public void deletePost(@PathVariable String postscriptNo){
        System.out.println("---------------------"+postscriptNo);
        postscriptService.deletePost(postscriptNo);
    }


    //후기 등록 처리
    @RequestMapping("/insertPostscript.do")
    public String insertPostscriptForm(Model model, PostscriptDTO dto) {
        return "user/insertUserValid";
    }

    /*숙박 업체 후기 리스트*/
    @RequestMapping(value = "/postscript/{lodgmentNo}", method = RequestMethod.GET)
    public List<PostscriptDTO> detailRooms(@PathVariable String lodgmentNo,
                                           LodgmentDTO dto) {
        dto.setLodgmentNo(lodgmentNo);

        return postscriptService.getPostscriptList(dto);
    }

    /*숙박 업체 후기 등록*/
    @RequestMapping(value = "/postscript", method = RequestMethod.POST)
    public int insertPostscript(PostscriptDTO dto,HttpSession session) {
        System.out.println("--------------------------"+dto.getRoomNo());


        MemberDTO memberDTO = (MemberDTO)session.getAttribute("login");

        dto.setMemberNo(memberDTO.getMemberNo());

        return postscriptService.insertPostscript(dto);
    }
}
