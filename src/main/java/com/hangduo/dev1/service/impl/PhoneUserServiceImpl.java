package com.hangduo.dev1.service.impl;

import com.hangduo.dev1.dao.UserDao;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.PhoneUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PhoneUserServiceImpl implements PhoneUserService {

    @Resource
    UserDao userDao;


    @Override
    public boolean checkLogin(String phone, String pwd) {
        User user=getUserByPhoneNum(phone);
        if (user==null){
            return false;
        }else{
            if (user.getPassword().equals(pwd)){
                return true;
            }else{
                return false;
            }
        }
    }

    @Override
    public User getUserByPhoneNum(String phone) {
        return userDao.getUserByPhone(phone);
    }
}
