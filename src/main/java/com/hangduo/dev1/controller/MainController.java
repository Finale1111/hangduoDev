package com.hangduo.dev1.controller;

import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class MainController {

    @Resource
    UserService userService;

    @RequestMapping(value = "/init")
    public String initTest(Model model){
        User user = userService.getUserByUid(100001);
        model.addAttribute("info",user.getPassword()+user.getRegDate().toString());
        return "show";
    }

    @RequestMapping(value = "/laws")
    public String toLaws(){
        return "laws";
    }



    @RequestMapping(value = "/messages")
    public String toMessage(){
        return "messages";
    }

    @RequestMapping(value = "/admins")
    public String toAdmins(){
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
    public String toUsers(){
        return "users";
    }

    @RequestMapping(value = "/items")
    public String toItems(){
        return "items";
    }

    @RequestMapping(value = "/addItems")
    public String toAddItems(){
        return "addItems";
    }

    @RequestMapping(value = "/addLaws")
    public String toAddLaws(){
        return "addLaws";
    }

    @RequestMapping(value = "/catalogs")
    public String toCatalogs(){
        return "catalogs";
    }

    @RequestMapping(value = "/addCatalogs")
    public String toAddCatalogs(){
        return "addCatalogs";
    }





}
