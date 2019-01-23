package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Item;
import com.hangduo.dev1.entity.Law;

import java.util.List;

public interface LawService {


    Law getLawByAlias(String lawAlias);

    PageInfo<Law> searchLaws(int pageNum,int pageSize,int lawNum,String title);

    PageInfo<Law> getAllLaws(int pageNum,int pageSize);

    PageInfo<Catalog> getCatalogsFromLaw(String lawAlias,int pageNum,int pageSize);

    List<Catalog> getSubCalogs(int cid);

    List<Law> getLawsList();

    PageInfo<Item> getItemsFromLaw(String lawAlias,int pageNum,int pageSize);

    PageInfo<Item> getItemsMuti(String lawAlias,String itemNum,String keywords,int pageNum,int pageSize);

    boolean addLaw(Law law);

    boolean addCatalog(Catalog catalog);

    boolean DelLaw(String lawAlias);

}
