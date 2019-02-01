package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Item;
import com.hangduo.dev1.entity.Law;

import java.util.List;

public interface LawService {


    Law getLawByAlias(String lawAlias);

    Item getItemByIid(int iid);

    PageInfo<Law> searchLaws(int pageNum,int pageSize,int lawNum,String title);

    PageInfo<Law> getAllLaws(int pageNum,int pageSize);

    PageInfo<Catalog> getCatalogsFromLaw(String lawAlias,int pageNum,int pageSize);

    List<Catalog> getCatalogsFromLaw(String lawAlias);

    List<Catalog> getSubCalogs(int cid);

    List<Law> getLawsList();

    PageInfo<Item> getItemsFromLaw(String lawAlias,int pageNum,int pageSize);

    PageInfo<Item> getItemsMuti(String lawAlias,String itemNum,String keywords,int pageNum,int pageSize);

    boolean addLaw(Law law);

    boolean addItem(Item item);

    boolean addCatalog(Catalog catalog);

    boolean DelLaw(String lawAlias);

    boolean delCatalog(int cid);

    boolean delItem(int iid);

    boolean updLaw(Law law);

    boolean updItem(Item item);
    List<Law> getLawSearch(String title,int lawNum);
   List<Item> getItemsMuti2(String lawAlias,String itemNum,String keywords);

}
