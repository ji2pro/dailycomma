package com.yedam.dailycomma.postscript;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomPostDTO;
import oracle.jdbc.proxy.annotation.Post;

import java.util.List;

public interface PostscriptService {

    public List<PostscriptDTO> getPostscriptList(LodgmentDTO dto);
    public List<RoomDTO> insertPostscriptForm(LodgmentDTO dtoo);
    public int insertPostscript(PostscriptDTO dto);
    public void deletePost(String postscriptNo);
}
