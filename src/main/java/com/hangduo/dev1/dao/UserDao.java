package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    User getUserByUid(int uid);

    User getUserByPhone(@Param("phone") String phone);

    List<User> getUsers();

    List<User> getUsersByPhone(String phone);

    Integer updUser(User user);



}
