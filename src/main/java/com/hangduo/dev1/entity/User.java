package com.hangduo.dev1.entity;

import java.sql.Date;
import java.util.List;

public class User {

    private int uid,userType,status;
    private String userPhone,password;
    private Date regDate;
    private List<Integer> collections;
    private List<Question> hisQuestions;


    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public List<Integer> getCollections() {
        return collections;
    }

    public void setCollections(List<Integer> collections) {
        this.collections = collections;
    }

    public List<Question> getHisQuestions() {
        return hisQuestions;
    }

    public void setHisQuestions(List<Question> hisQuestions) {
        this.hisQuestions = hisQuestions;
    }
}
