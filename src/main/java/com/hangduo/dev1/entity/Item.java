package com.hangduo.dev1.entity;

public class Item {

    private int iid,cid;
    private String itemNum,lawAlias,itemAlias,itemTitle,itemContent;

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getItemNum() {
        return itemNum;
    }

    public void setItemNum(String itemNum) {
        this.itemNum = itemNum;
    }

    public String getLawAlias() {
        return lawAlias;
    }

    public void setLawAlias(String lawAlias) {
        this.lawAlias = lawAlias;
    }

    public String getItemAlias() {
        return itemAlias;
    }

    public void setItemAlias(String itemAlias) {
        this.itemAlias = itemAlias;
    }

    public String getItemTitle() {
        return itemTitle;
    }

    public void setItemTitle(String itemTitle) {
        this.itemTitle = itemTitle;
    }

    public String getItemContent() {
        return itemContent;
    }

    public void setItemContent(String itemContent) {
        this.itemContent = itemContent;
    }
}
