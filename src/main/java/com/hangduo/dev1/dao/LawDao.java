package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.Law;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LawDao {

    List<Law> getLaws(int pageNum,int pageSize);

    Law getLawByAlias(String alias);

    List<Law> getLawByTitle(@Param("title") String title,int pageNum,int pageSize);

    List<Law> getLawByLawNum(@Param("lawNum") int lawNum, int pageNum, int pageSize);

}
