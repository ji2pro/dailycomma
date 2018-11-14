package com.yedam.dailycomma.cast;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CastDAOMybatis {
	
	@Autowired SqlSessionTemplate mybatis;

    public CastDTO getDetailCast(CastDTO dto) {
        return mybatis.selectOne("detailCast.getDetailCast",dto);
    }

    public void detailCastInsert(CastDTO dto){mybatis.insert("detailCast.detailCastInsert",dto);}

    public void detailCastDelete(CastDTO dto){mybatis.delete("detailCast.detailCastDelete",dto);}

}
