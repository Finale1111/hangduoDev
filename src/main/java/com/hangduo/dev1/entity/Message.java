package com.hangduo.dev1.entity;


import java.sql.Timestamp;

public class Message {

    private int mid,uid,status;
    private String msgContent,msgMini;
    private Timestamp msgTime;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsgContent() {
        return msgContent;
    }

    public void setMsgContent(String msgContent) {
        this.msgContent = msgContent;
    }

    public Timestamp getMsgTime() {
        return msgTime;
    }

    public void setMsgTime(Timestamp msgTime) {
        this.msgTime = msgTime;
    }

    public String getMsgMini() {
        return msgMini;
    }

    public void setMsgMini(String msgMini) {
        this.msgMini = msgMini;
    }
}

