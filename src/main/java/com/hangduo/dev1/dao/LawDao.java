package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Item;
import com.hangduo.dev1.entity.Law;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LawDao {

    List<Law> getLaws();

    Law getLawByAlias(String alias);

    List<Law> getLawSearch(@Param("title") String title,@Param("lawNum")int lawNum);

    List<Catalog> getHeadCatalogs(String lawAlias);

    List<Catalog> getNextLevelCatalogs(int cid);

    List<Item> getItems(String lawAlias);

    List<Item> getItemsMuti(String lawAlias,String itemNum,String keywords);

    List<Item> getItemFromCatalog(int cid);

    int addLaw(Law law);

    int addItem(Item item);

    Catalog getCatalogByCid(int cid);

    int addCatalog(Catalog catalog);

    Integer delLaw(@Param("lawAlias") String lawAlias);

    Integer delCatalog(@Param("cid")int cid);

    int updLaw(Law law);

    Item getItem(int iid);

    int delItem(int iid);

    int updItem(Item item);
}
