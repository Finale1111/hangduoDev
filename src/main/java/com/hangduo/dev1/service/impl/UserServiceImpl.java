package com.hangduo.dev1.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.UserDao;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    UserDao userDao;


    @Override
    public User getUserByUid(int uid) {
        return userDao.getUserByUid(uid);
    }

    @Override
    public PageInfo<User> getUsers(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> usersList=userDao.getUsers();

        PageInfo<User> users=new PageInfo<>(usersList);

        return users;
    }

    @Override
    public PageInfo<User> getUsersByPhone(String userPhone, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> usersList=userDao.getUsersByPhone(userPhone);

        PageInfo<User> users=new PageInfo<>(usersList);

        return users;
    }

    @Override
    public boolean UpdUser(User user) {
        return userDao.updUser(user)>0?true:false;
    }
}


