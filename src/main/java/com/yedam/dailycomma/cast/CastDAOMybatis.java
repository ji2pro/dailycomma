package com.yedam.dailycomma.cast;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CastDAOMybatis {

    @Autowired
    SqlSessionTemplate mybatis;

    public CastDTO getDetailCast(CastDTO dto) {
        return mybatis.selectOne("detailCast.getDetailCast", dto);
    }

    public void detailCastInsert(CastDTO dto) {
        mybatis.insert("detailCast.detailCastInsert", dto);
    }

    public void detailCastDelete(CastDTO dto) {
        mybatis.delete("detailCast.detailCastDelete", dto);
    }

    public List<CastDTO> detailCastPostList (CastDTO dto){return mybatis.selectList("detailCast.detailCastPostList",dto);}

    public CastDTO detailCastPostPage(CastDTO dto){return mybatis.selectOne("detailCast.detailCastPostPage",dto);}

    public void detailCastPostInput(CastDTO dto){mybatis.insert("detailCast.detailCastPostInput",dto);}

}
