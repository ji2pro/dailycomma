package com.yedam.dailycomma.cast;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CastServiceImpl implements CastService {

    @Autowired
    CastDAOMybatis dao;

    @Override
    public CastDTO getDetailCast(CastDTO dto) { return dao.getDetailCast(dto);}

    @Override
    public void detailCastInsert(CastDTO dto) {dao.detailCastInsert(dto);}

    @Override
    public void detailCastDelete(CastDTO dto) {dao.detailCastDelete(dto);}

    @Override
    public List<CastDTO> detailCastPostList(CastDTO dto) {return dao.detailCastPostList(dto);}

    @Override
    public CastDTO detailCastPostPage() {return dao.detailCastPostPage();}

    @Override
    public void detailCastPostInput(CastDTO dto) {
        dao.detailCastPostInput(dto);
    }
}
