package com.hangduo.dev1.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.*;
import com.hangduo.dev1.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.print.attribute.standard.Sides;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SinController {

    @Resource
    UserService userService;

    @Resource
    AdminService adminService;



    @Resource
    MessageService messageService;

    @Resource
    WebService webService;

    @RequestMapping("/userSearch")
    public String userSearch(HttpServletRequest request,@RequestParam(defaultValue = "",required = false) String userPhone,
                             Model model,
                             @RequestParam(defaultValue = "1",required = false) int pageNumber,
                             @RequestParam(defaultValue = "10",required = false) int pageSize){
        request.getSession().removeAttribute("aaa");
        PageInfo<User> users=userService.getUsersByPhone(userPhone,pageNumber,pageSize);
        List<User> user =userService.getUserByPhonea(userPhone);
        if(user.size()==0){
            request.getSession().setAttribute("aaa","没有查询结果");
            return "redirect:/userSearch1";
        }
        model.addAttribute("users",users);
        model.addAttribute("phoneInfo",userPhone);
        return "selectUsers";
    }
    @RequestMapping("/userSearch1")
    public String userSearch1(HttpServletRequest request,@RequestParam(defaultValue = "",required = false) String userPhone,
                              Model model,
                              @RequestParam(defaultValue = "1",required = false) int pageNumber,
                              @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<User> users=userService.getUsersByPhone(userPhone,pageNumber,pageSize);
        model.addAttribute("users",users);
        model.addAttribute("phoneInfo",userPhone);
        return "selectUsers";
    }
/*
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
            return "admins_old";
        }
    }*/

    @RequestMapping("/AddAdmin")
    @ResponseBody
    public JSON AddAdmina(@RequestParam(value="adminName",required =false)String adminName,
                          @RequestParam(value ="adminPhone",required = false)String adminPhone,
                          @RequestParam(value = "adminPassword",required =false)String adminPassword) {
        Map<String, String> resultMap = new HashMap<String, String>();
        Admin admin = new Admin();
        admin.setAdminName(adminName);
        admin.setAdminPhone(adminPhone);
        java.sql.Date d = new java.sql.Date(new java.util.Date().getTime());
        admin.setRegDate(d);
        admin.setPassword(adminPassword);
        boolean result = adminService.AddAdmins(admin);
        resultMap.put("result", result ? "true" : "false");
        return (JSON) JSON.toJSON(resultMap);
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




    @RequestMapping("delMess")
    @ResponseBody
    public Map<String,String> dekMess(@RequestParam(value="mid",required =false)Integer mid){

        boolean flag=false;
        flag=messageService.delMessages(mid);
        Map<String,String> resultMap=new HashMap<String,String>();
        if (flag){
            resultMap.put("result","true");
        }else{
            resultMap.put("result","false");
        }
        return resultMap;
    }


    @RequestMapping("adminById")
    @ResponseBody
    public JSON adminById(HttpServletRequest request,@RequestParam(value ="aid",required =false)Integer aid){
       Admin admin=adminService.findAdminById(aid);
       request.getSession().setAttribute("aid",aid);
       return (JSON) JSON.toJSON(admin);
    }

    @RequestMapping("updAdmin")
    @ResponseBody
    public JSON updAdmin(HttpServletRequest request,@RequestParam(value="glyPhone",required =false)String glyPhone,
                         @RequestParam(value="glyName",required =false)String glyName,
                         @RequestParam(value="password",required =false)String password
                         ){
        Map<String,String> resultMap=new HashMap<String, String>();
        Admin admin=new Admin();
         Integer aid=(Integer) request.getSession().getAttribute("aid");
         admin.setAid(aid);
         admin.setAdminName(glyName);
         admin.setPassword(password);
         admin.setAdminPhone(glyPhone);
        java.sql.Date d=new java.sql.Date(new java.util.Date().getTime());
        admin.setRegDate(d);
        boolean result=adminService.UpdAdmin(admin);
        if(result){
            resultMap.put("message","true");
        }
        else{
            resultMap.put("message","false");
        }
        return (JSON) JSON.toJSON(resultMap);
    }


    @RequestMapping("getMessageById")
    @ResponseBody
    public JSON getMessById(@RequestParam(value="mid",required =false)Integer mid){
        Message message=messageService.findMessageById(mid);
       return (JSON) JSON.toJSON(message);
    }



    @RequestMapping("getWebSetting")
    public String getWebSetting(@RequestParam(value="sid",required =false)Integer sid,@RequestParam(value="cpy_info",required =false)String cpy_info,HttpServletRequest request,Model model){
        WebSetting webSetting=webService.getWebsettingById(1);
       // request.getSession().setAttribute("sid",sid);

        model.addAttribute("webSetting",webSetting);
        return "company";
    }

    @RequestMapping("toUpdWebCpy_info")
    @ResponseBody
    public JSON toUpdWebCpy_info(@RequestParam(value="cpy_info",required =false)String cpy_info,HttpServletRequest request){
        Map<String,String> resultMap=new HashMap<String,String>();
       // Integer sid=(Integer) request.getSession().getAttribute("sid");
        boolean result=webService.updWebCpy_info(cpy_info,1);
        if(result){
            resultMap.put("message","true");
        }
        else{
            resultMap.put("message","false");
        }
        return (JSON)JSON.toJSON(resultMap);

    }



    @RequestMapping("getWebSettingagreement")
    public String getWebSettingagreement(@RequestParam(value="sid",required =false)Integer sid,@RequestParam(value="agreement",required =false)String agreement,HttpServletRequest request,Model model){
        WebSetting webSetting=webService.getWebsettingById(1);
        // request.getSession().setAttribute("sid",sid);

        model.addAttribute("webSetting",webSetting);
        return "serviceAgreement";
    }
    @RequestMapping("toUpdWebagreement")
    @ResponseBody
    public JSON toUpdWebagreement(@RequestParam(value="agreement",required =false)String agreement,HttpServletRequest request){
        Map<String,String> resultMap=new HashMap<String,String>();
        // Integer sid=(Integer) request.getSession().getAttribute("sid");
        boolean result=webService.updWebagreement(agreement,1);
        if(result){
            resultMap.put("message","true");
        }
        else{
            resultMap.put("message","false");
        }
        return (JSON)JSON.toJSON(resultMap);

    }





}
