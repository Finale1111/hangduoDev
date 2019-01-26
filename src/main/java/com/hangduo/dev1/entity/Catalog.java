package com.hangduo.dev1.entity;

import java.util.ArrayList;
import java.util.List;

public class Catalog {

    private int cid,cLevel,cIndex,supCid;
    private String catalogContent,lawAlias;
    private List<Item> items=new ArrayList<>();

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getcLevel() {
        return cLevel;
    }

    public void setcLevel(int cLevel) {
        this.cLevel = cLevel;
    }

    public int getcIndex() {
        return cIndex;
    }

    public void setcIndex(int cIndex) {
        this.cIndex = cIndex;
    }

    public int getSupCid() {
        return supCid;
    }

    public void setSupCid(int supCid) {
        this.supCid = supCid;
    }

    public String getCatalogContent() {
        return catalogContent;
    }

    public void setCatalogContent(String catalogContent) {
        this.catalogContent = catalogContent;
    }

    public String getLawAlias() {
        return lawAlias;
    }

    public void setLawAlias(String lawAlias) {
        this.lawAlias = lawAlias;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
