package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.Admin;
import java.util.List;

public interface AdminDao {
    List<Admin> getAdmin(int pageNum, int pageSize);
    Integer addAdmin(Admin admin);
    Integer delAdmin(Integer aid);
}
