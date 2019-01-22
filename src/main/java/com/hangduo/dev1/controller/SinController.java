package com.hangduo.dev1.controller;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Admin;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.AdminService;
import com.hangduo.dev1.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
public class SinController {

    @Resource
    UserService userService;

    @Resource
    AdminService adminService;

    @RequestMapping("/userSearch")
    public String userSearch(@RequestParam(defaultValue = "",required = false) String userPhone,
                             Model model,
                             @RequestParam(defaultValue = "1",required = false) int pageNumber,
                             @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<User> users=userService.getUsersByPhone(userPhone,pageNumber,pageSize);
        model.addAttribute("users",users);
        model.addAttribute("phoneInfo",userPhone);
        return "selectUsers";
    }

    @RequestMapping("/AddAdmin")
    public String AddAdmina(@RequestParam(value="adminName",required =false)String adminName,
                            @RequestParam(value ="adminPhone",required = false)String adminPhone,
                            @RequestParam(value = "adminPassword",required =false)String adminPassword,
                            Model model){

        Admin admin=new Admin();
        admin.setAdminName(adminName);
        admin.setAdminPhone(adminPhone);
        java.sql.Date d=new java.sql.Date(new java.util.Date().getTime());
        admin.setRegDate(d);
        admin.setPassword(adminPassword);
        boolean result=adminService.AddAdmins(admin);
        if(result){
            model.addAttribute("message","添加成功");
            return "redirect:/admins";
        }
        else {
            model.addAttribute("message","添加失败");
            return "admins";
        }
    }

    @RequestMapping("/delAdmins")
    @ResponseBody
    public Map<String,String> delAdmins(@RequestParam(value="aid",required =false)Integer aid){

        boolean flag=false;
        flag=adminService.DelAdmin(aid);
        Map<String,String> resultMap=new HashMap<String,String>();
        if (flag){
            resultMap.put("result","true");
        }else{
            resultMap.put("result","false");
        }
        return resultMap;
    }
}
