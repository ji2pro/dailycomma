package com.yedam.dailycomma.cast;

import com.yedam.dailycomma.management.ManagementService;
import com.yedam.dailycomma.member.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CastController {

    @Autowired
    CastService castService;

    /*캐스트 상세 페이지 값 가져오기*/
    @RequestMapping(value = "/detailCast/{tourId}")
    public String detailCast(@PathVariable String tourId, HttpSession session, Model model) {
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");
        CastDTO castDTO = new CastDTO();
        //memberDTO.getMemberNo();
        castDTO.setMemberNo("MEM1");
        castDTO.setTourId(tourId);

        model.addAttribute("getDetailCast", castService.getDetailCast(castDTO));

        return "cast/detailCast";
    }
    /*좋아요 추가 작업*/
    @RequestMapping(value = "/detailCastInsert/{tourId}")
    @ResponseBody
    public CastDTO detailCastInsert(@PathVariable String tourId, HttpSession session, Model model) {
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");
        CastDTO castDTO = new CastDTO();
        //memberDTO.getMemberNo();
        castDTO.setMemberNo("MEM1");
        castDTO.setTourId(tourId);

        castService.detailCastInsert(castDTO);

        return castService.getDetailCast(castDTO);
    }
    /*좋아요 삭제 작업*/
    @RequestMapping(value = "/detailCastDelete/{tourId}")
    @ResponseBody
    public CastDTO detailCastDelete(@PathVariable String tourId, HttpSession session, Model model) {
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");

        CastDTO castDTO = new CastDTO();
        //memberDTO.getMemberNo();
        castDTO.setMemberNo("MEM1");
        castDTO.setTourId(tourId);

        castService.detailCastDelete(castDTO);

        return castService.getDetailCast(castDTO);
    }

    /*캐스트 덧글 리스트 가져오기 ajax 호출*/
    @RequestMapping(value = "/detailCastPostList/{tourId}/{paging}")
    @ResponseBody
    public List<CastDTO> detailCastPostList(@PathVariable String tourId,
                                            @PathVariable String paging,
                                            HttpSession session,
                                            Model model) {

        CastDTO castDTO = new CastDTO();
        //memberDTO.getMemberNo();
        castDTO.setMemberNo("MEM1");
        castDTO.setTourId(tourId);

        int page = Integer.parseInt(paging);
        int countPage = 5;

        int query_start = (page - 1) * countPage + 1;
        int query_end = page * countPage;

        castDTO.setPage(page);
        castDTO.setStart(query_start);
        castDTO.setEnd(query_end);

        return castService.detailCastPostList(castDTO);
    }

    @RequestMapping(value = "/detailCastPostPage")
    @ResponseBody
    public CastDTO detailCastPostPage(){

        CastDTO castDTO = new CastDTO();
        castDTO = castService.detailCastPostPage();

        int countList = 5;

        castDTO.setTotalPage(castDTO.getTotalCount() / countList); /*22/5 의 몫을 가져온다. 4*/

        if (castDTO.getTotalCount() % countList > 0) { /*22 % 5 > 0*/
            castDTO.setTotalPage(castDTO.getTotalPage()+1);   /*페이지 자투리 처리*/
        }
        System.out.println("-------------------"+castDTO.getTotalPage()+"-------------------");

        return castDTO;
    }
}
