package com.hangduo.dev1.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.AdminDao;
import com.hangduo.dev1.entity.Admin;
import com.hangduo.dev1.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    AdminDao adminDao;
    @Override
    public PageInfo<Admin> getAllAdmins(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Admin> admins=adminDao.getAdmin(pageNum,pageSize);

        PageInfo<Admin> result=new PageInfo<>(admins);
        return result;
    }

    @Override
    public boolean AddAdmins(Admin admin) {
        Integer result=adminDao.addAdmin(admin);
        if(result>0){
            return true;
        }
        else {
            return false;
        }}

    @Override
    public boolean DelAdmin(Integer aid) {
        Integer result=adminDao.delAdmin(aid);
        if(result>0){
            return true;
        }
        else{
            return false;
        }

    }
}
