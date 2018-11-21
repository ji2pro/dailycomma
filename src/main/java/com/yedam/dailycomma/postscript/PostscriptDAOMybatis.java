package com.yedam.dailycomma.postscript;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.room.RoomDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class PostscriptDAOMybatis {
	
	@Autowired SqlSessionTemplate mybatis;

    public List<PostscriptDTO> getPostscriptList(LodgmentDTO dto) {
        System.out.println("========숙박 업체 후기 리스트 조회========");
        return mybatis.selectList("detailRoom.getPostscriptList",dto);
    }

    public List<RoomDTO> insertPostscriptForm(LodgmentDTO dto){
        System.out.println("========후기 등록 폼가기========");
        return mybatis.selectList("detailRoom.insertPostscriptForm", dto);
    }

    public int insertPostscript(PostscriptDTO dto) {
        System.out.println("========등록 처리========");
        return mybatis.insert("detailRoom.insertPostscript",dto);
    }

    public void deletePost(String postscriptNo){
        mybatis.delete("detailRoom.deletePost",postscriptNo);
    }

}
