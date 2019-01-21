package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.User;

import java.util.List;

public interface UserService {

    User getUserByUid(int uid);

    PageInfo<User> getUsers(int pageNum,int pageSize);

    PageInfo<User> getUsersByPhone(String userPhone,int pageNum,int pageSize);


}
