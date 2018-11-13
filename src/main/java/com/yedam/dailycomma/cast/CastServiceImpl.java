package com.yedam.dailycomma.cast;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CastServiceImpl implements CastService {

    @Autowired
    CastDAOMybatis dao;

    @Override
    public CastDTO getDetailCast(CastDTO dto) {
        return dao.getDetailCast(dto);
    }
}
