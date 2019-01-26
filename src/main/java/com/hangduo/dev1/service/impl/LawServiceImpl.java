package com.hangduo.dev1.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.LawDao;
import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Item;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.service.LawService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Service
public class LawServiceImpl implements LawService {

    @Resource
    LawDao lawDao;


    @Override
    public PageInfo<Law> getAllLaws(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Law> laws=lawDao.getLaws();
        System.out.println("laws 尺寸"+laws.size());
        PageInfo<Law> result=new PageInfo<>(laws);
        System.out.println("laws 分页"+result.getPageSize());
        return result;
    }

    @Override
    public PageInfo<Catalog> getCatalogsFromLaw(String lawAlias, int pageNum, int pageSize) {

        PageHelper.startPage(pageNum,pageSize);

        List<Catalog> headCatalogs=lawDao.getHeadCatalogs(lawAlias);
        List<Catalog> catalogs=new ArrayList<>();
        for (int i=0;i<headCatalogs.size();i++){
            catalogs.add(headCatalogs.get(i));
            List<Catalog> subCatalogs=lawDao.getNextLevelCatalogs(headCatalogs.get(i).getCid());
            for (int j=0;j<subCatalogs.size();j++){
                catalogs.add(subCatalogs.get(j));
                List<Catalog> doubleSubcatalogs=lawDao.getNextLevelCatalogs(subCatalogs.get(j).getCid());
                for (int k=0;k<doubleSubcatalogs.size();k++){
                    catalogs.add(doubleSubcatalogs.get(k));
                }
                doubleSubcatalogs.clear();
            }
            subCatalogs.clear();
        }

        PageInfo<Catalog> result=new PageInfo<>(catalogs);
        return result;
    }

    public List<Catalog> getCatalogsFromLaw(String lawAlias){

        List<Catalog> headCatalogs=lawDao.getHeadCatalogs(lawAlias);
        List<Catalog> catalogs=new ArrayList<>();
        for (int i=0;i<headCatalogs.size();i++){
            catalogs.add(headCatalogs.get(i));
            List<Catalog> subCatalogs=lawDao.getNextLevelCatalogs(headCatalogs.get(i).getCid());
            for (int j=0;j<subCatalogs.size();j++){
                Catalog ic=subCatalogs.get(j);
                List<Item> its=lawDao.getItemFromCatalog(ic.getCid());
                ic.setItems(its);
                catalogs.add(ic);
                List<Catalog> doubleSubcatalogs=lawDao.getNextLevelCatalogs(subCatalogs.get(j).getCid());
                for (int k=0;k<doubleSubcatalogs.size();k++){
                    Catalog icc=subCatalogs.get(k);
                    List<Item> itss=lawDao.getItemFromCatalog(ic.getCid());
                    ic.setItems(itss);
                    catalogs.add(icc);
                }
                doubleSubcatalogs.clear();
            }
            subCatalogs.clear();
        }
        return catalogs;
    }

    @Override
    public List<Catalog> getSubCalogs(int cid) {
        return lawDao.getNextLevelCatalogs(cid);
    }

    @Override
    public Law getLawByAlias(String lawAlias) {

        return lawDao.getLawByAlias(lawAlias);
    }

    @Override
    public PageInfo<Law> searchLaws(int pageNum, int pageSize,int lawNum, String title) {
        PageHelper.startPage(pageNum,pageSize);

        List<Law> laws=lawDao.getLawSearch(title,lawNum);

        PageInfo<Law> result=new PageInfo<>(laws);

        return result;

    }

    @Override
    public List<Law> getLawsList() {
        List<Law> laws=lawDao.getLaws();
        return laws;
    }

    @Override
    public PageInfo<Item> getItemsFromLaw(String lawAlias, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Item> items=lawDao.getItems(lawAlias);
        for (Item item:items){
            System.out.println("xxx"+item.getLawAlias()+item.getVersion());
        }
        PageInfo<Item> result=new PageInfo<>(items);
        return result;
    }

    @Override
    public PageInfo<Item> getItemsMuti(String lawAlias, String itemNum, String keywords, int pageNum, int pageSize) {

        System.out.println("--server---"+lawAlias);

        PageHelper.startPage(pageNum,pageSize);
        List<Item> items=lawDao.getItemsMuti(lawAlias,itemNum,keywords);
        PageInfo<Item> result=new PageInfo<>(items);
        return result;
    }

    @Override
    public boolean addLaw(Law law) {
        int i=lawDao.addLaw(law);
        if (i>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean addItem(Item item) {
        int i=lawDao.addItem(item);
        if (i>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean addCatalog(Catalog catalog) {

        int supCid=catalog.getSupCid();
        int level=lawDao.getCatalogByCid(supCid).getcLevel()+1;
        catalog.setcLevel(level);

        if (lawDao.addCatalog(catalog)>0){
            return true;
        }else{
            return false;
        }


    }


    @Override
    public boolean DelLaw(String lawAlias) {
        return lawDao.delLaw(lawAlias)>0?true:false;
    }

    @Override
    public boolean delCatalog(int cid) {
        return lawDao.delCatalog(cid)>0?true:false;
    }

    @Override
    public boolean updLaw(Law law) {
        if (lawDao.updLaw(law)>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean delItem(int iid) {
        if (lawDao.delItem(iid)>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public Item getItemByIid(int iid) {
        return lawDao.getItem(iid);
    }

    @Override
    public boolean updItem(Item item) {
        if (lawDao.updItem(item)>0){
            return true;
        }else {
            return false;
        }
    }
}
