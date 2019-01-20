package com.hangduo.dev1.entity;

import java.sql.Timestamp;

public class Question {

    private int qid,uid,iid,status;
    private String qstName,qstPhone,qstContent;
    private Timestamp qstTime;

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getQstName() {
        return qstName;
    }

    public void setQstName(String qstName) {
        this.qstName = qstName;
    }

    public String getQstPhone() {
        return qstPhone;
    }

    public void setQstPhone(String qstPhone) {
        this.qstPhone = qstPhone;
    }

    public String getQstContent() {
        return qstContent;
    }

    public void setQstContent(String qstContent) {
        this.qstContent = qstContent;
    }

    public Timestamp getQstTime() {
        return qstTime;
    }

    public void setQstTime(Timestamp qstTime) {
        this.qstTime = qstTime;
    }
}
