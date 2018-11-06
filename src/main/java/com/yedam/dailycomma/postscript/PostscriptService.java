package com.yedam.dailycomma.postscript;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.room.RoomDTO;
import com.yedam.dailycomma.room.RoomPostDTO;

import java.util.List;

public interface PostscriptService {

    public List<PostscriptDTO> getPostscriptList(LodgmentDTO dto);
}
