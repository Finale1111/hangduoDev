package com.hangduo.dev1.service;

import com.hangduo.dev1.entity.User;

public interface PhoneUserService {

    boolean checkLogin(String phone,String pwd);

    User getUserByPhoneNum(String phone);

}
