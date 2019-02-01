package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.User;

import java.util.List;

public interface UserDao {

    User getUserByUid(int uid);

    User getUserByPhone(String phone);

    List<User> getUsers();

    List<User> getUsersByPhone(String phone);

    Integer updUser(User user);

}
