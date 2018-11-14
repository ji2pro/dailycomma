package com.yedam.dailycomma.cast;

public interface CastService {

    public CastDTO getDetailCast(CastDTO dto);
    public void detailCastInsert(CastDTO dto);
    public void detailCastDelete(CastDTO dto);
}
