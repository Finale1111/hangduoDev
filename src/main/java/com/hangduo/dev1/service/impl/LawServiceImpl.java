package com.hangduo.dev1.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.LawDao;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.service.LawService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class LawServiceImpl implements LawService {

    @Resource
    LawDao lawDao;


    @Override
    public PageInfo<Law> getAllLaws(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Law> laws=lawDao.getLaws(pageNum,pageSize);
        PageInfo<Law> result=new PageInfo<>(laws);

        return result;
    }

    @Override
    public Law getLawByAlias(String lawAlias) {

        return lawDao.getLawByAlias(lawAlias);
    }

    @Override
    public PageInfo<Law> searchLaws(int pageNum, int pageSize,int lawNum, String title) {
        PageHelper.startPage(pageNum,pageSize);
        List<Law> laws=new ArrayList<Law>();
        if (lawNum!=0){
            laws.addAll(lawDao.getLawByLawNum(lawNum,pageNum,pageSize));
        }
        if (!title.equals("x")){
            laws.addAll(lawDao.getLawByTitle(title,pageNum,pageSize));
        }

        for (int i=0;i<laws.size()-1;i++){
            for (int j=laws.size()-1;j>i;j--){
                if (laws.get(j).equals(laws.get(i))){
                    laws.remove(j);
                }
            }
        }
        PageInfo<Law> result=new PageInfo<>(laws);

        return result;

    }
}
