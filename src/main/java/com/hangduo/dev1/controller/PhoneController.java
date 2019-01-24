package com.hangduo.dev1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PhoneController {

    @RequestMapping("/init")
    public String init(){
        return "loginUser";
    }

    @RequestMapping("/forgetPassword")
    public String forgetPassword(){
        return "forgetPassword";
    }

    @RequestMapping("/addUser")
    public String addUser() {
        return "addUser";
    }
}
