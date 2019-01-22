package com.hangduo.dev1.controller;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Admin;
import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.AdminService;
import com.hangduo.dev1.service.LawService;
import com.hangduo.dev1.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MainController {

    @Resource
    UserService userService;
    @Resource
    LawService lawService;
    @Resource
    AdminService adminService;


    @RequestMapping(value = "/laws")
    public String toLaws(Model model,@RequestParam(defaultValue = "1",required = false) int pageNumber,
                         @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Law> laws=lawService.getAllLaws(pageNumber,pageSize);
        model.addAttribute("laws",laws);
        return "laws";
    }

    @RequestMapping(value = "/messages")
    public String toMessage(){
        return "messages";
    }

    @RequestMapping(value = "/admins")
    public String toAdmins(Model model,
                           @RequestParam(defaultValue = "1",required = false) int pageNumber,
                           @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Admin> admins= adminService.getAllAdmins(pageNumber,pageSize);
        model.addAttribute("admins",admins);
        return "admins";
    }

    @RequestMapping(value = "/phoneMsg")
    public String toPhoneMsg(){
        return "phoneMsg";
    }

    @RequestMapping(value = "/questions")
    public String toQuestions(){
        return "questions";
    }

    @RequestMapping(value = "/webSetting")
    public String toWebSetting(){
        return "webSetting";
    }

    @RequestMapping(value = "/mailSetting")
    public String toMailSetting(){
        return "mailSetting";
    }

    @RequestMapping(value = "/users")
    public String toUsers(Model model,
                          @RequestParam(defaultValue = "1",required = false) int pageNumber,
                          @RequestParam(defaultValue = "10",required = false) int pageSize){

        PageInfo<User> users=userService.getUsers(pageNumber,pageSize);
        model.addAttribute("users",users);

        return "users";
    }


    @RequestMapping(value = "/addItems")
    public String toAddItems(){
        return "addItems";
    }

    @RequestMapping(value = "/addLaws")
    public String toAddLaws(){
        return "addLaws";
    }


    @RequestMapping(value = "/addCatalogs")
    public String toAddCatalogs(){
        return "addCatalogs";
    }

    @RequestMapping(value = "/updLaw")
    public String toUpdLaw(String id,Model model){

        Law lawInfo=lawService.getLawByAlias(id);
        model.addAttribute("lawInfo",lawInfo);

        return "updLaws";
    }






}
