package com.hangduo.dev1.controller;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
public class SinController {

    @Resource
    UserService userService;

    @RequestMapping("/userSearch")
    public String userSearch(@RequestParam(defaultValue = "",required = false) String userPhone,
                             Model model,
                             @RequestParam(defaultValue = "1",required = false) int pageNumber,
                             @RequestParam(defaultValue = "30",required = false) int pageSize){
        PageInfo<User> users=userService.getUsersByPhone(userPhone,pageNumber,pageSize);
        model.addAttribute("users",users);
        return "users";
    }

}
