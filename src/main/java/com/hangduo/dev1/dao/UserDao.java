package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.User;

import java.util.List;

public interface UserDao {

    User getUserByUid(int uid);

    List<User> getUsers(int index);

    //这是刚刚写的

}
