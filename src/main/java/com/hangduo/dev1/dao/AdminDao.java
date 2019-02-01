package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminDao {
    List<Admin> getAdmin(int pageNum, int pageSize);
    Integer addAdmin(Admin admin);
    Integer delAdmin(Integer aid);
    Admin getAdminByID(@Param("aid") Integer aid);
    Integer updAdmin(Admin admin);
}
