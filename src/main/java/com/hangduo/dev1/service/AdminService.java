package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Admin;

public interface AdminService {

    PageInfo<Admin> getAllAdmins(int pageNum, int pageSize);

    boolean AddAdmins(Admin admin);

    boolean DelAdmin(Integer aid);

    Admin findAdminById(Integer aid);
    boolean UpdAdmin(Admin admin);
}
