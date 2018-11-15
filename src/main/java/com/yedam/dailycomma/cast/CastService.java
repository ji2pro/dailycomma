package com.yedam.dailycomma.cast;

import java.util.List;

public interface CastService {

    public CastDTO getDetailCast(CastDTO dto);
    public void detailCastInsert(CastDTO dto);
    public void detailCastDelete(CastDTO dto);
    public List<CastDTO> detailCastPostList(CastDTO dto);
    public CastDTO detailCastPostPage();
}
