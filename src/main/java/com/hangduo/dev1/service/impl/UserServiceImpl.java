package com.hangduo.dev1.service.impl;

import com.hangduo.dev1.dao.UserDao;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserDao userDao;


    @Override
    public User getUserByUid(int uid) {
        return userDao.getUserByUid(uid);
    }
}
