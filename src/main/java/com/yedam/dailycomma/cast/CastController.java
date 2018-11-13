package com.yedam.dailycomma.cast;

import com.yedam.dailycomma.management.ManagementService;
import com.yedam.dailycomma.member.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class CastController {

    @Autowired
    CastService castService;

    @RequestMapping(value = "/detailCast/{tourId}")
    public String detailCast(@PathVariable String tourId, HttpSession session, Model model) {
        MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");
        CastDTO castDTO = new CastDTO();
        //memberDTO.getMemberNo();
        castDTO.setMemberNo("MEM1");
        castDTO.setTourId(tourId);
        System.out.println(castDTO.getMemberNo());

        model.addAttribute("getDetailCast",castService.getDetailCast(castDTO));

        return "cast/detailCast";
    }
}
