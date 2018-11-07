package com.yedam.dailycomma.postscript;

import com.yedam.dailycomma.lodgment.LodgmentDTO;
import com.yedam.dailycomma.room.RoomDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("postscriptService")
public class PostscriptServiceImpl implements PostscriptService {

	@Autowired
    PostscriptDAOMybatis dao;

    @Override
    public List<PostscriptDTO> getPostscriptList(LodgmentDTO dto) {return dao.getPostscriptList(dto);}

    @Override
    public List<RoomDTO> insertPostscriptForm(LodgmentDTO dto) {
        return dao.insertPostscriptForm(dto);
    }
}
