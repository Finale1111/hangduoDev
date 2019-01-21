package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Law;

import java.util.List;

public interface LawService {


    Law getLawByAlias(String lawAlias);

    PageInfo<Law> searchLaws(int pageNum,int pageSize,int lawNum,String title);

    PageInfo<Law> getAllLaws(int pageNum,int pageSize);

}
