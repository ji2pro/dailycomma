package com.yedam.dailycomma.postscript;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PostscriptController {

    @Autowired
    PostscriptService postscriptService;
    @Autowired
    LodgmentDTO lodgmentDTO;

    //후기 등록 폼
    @RequestMapping("/insertPostscriptForm.do")
    public String insertPostscriptForm() {
        return "room/insertUserValid";
    }

    //후기 등록 처리
    @RequestMapping("/insertPostscript.do")
    public String insertPostscriptForm(Model model, PostscriptDTO dto) {

        return "user/insertUserValid";
    }

    /*숙박 업체 후기 리스트*/
    @RequestMapping("/postScriptList.do/{lodgmentNo}")
    public String detailRooms(Model model,
                              @PathVariable String lodgmentNo,
                              LodgmentDTO dto) {
        dto.setLodgmentNo(lodgmentNo);

        /*숙박 업체에 대한 전체 후기 리스트*/
        model.addAttribute("getPostscriptList", postscriptService.getPostscriptList(dto));

        return "room/postList"; /*바꿀예정*/
    }
}
