package com.hangduo.dev1.controller;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.*;
import com.hangduo.dev1.service.*;
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
    @Resource
    QuestionService questionService;

    @Resource
    MessageService messageService;



    @RequestMapping(value = "/laws")
    public String toLaws(Model model,@RequestParam(defaultValue = "1",required = false) int pageNumber,
                         @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Law> laws=lawService.getAllLaws(pageNumber,pageSize);
        model.addAttribute("laws",laws);
        return "laws";
    }

    @RequestMapping(value = "/messages")
    public String toMessage(Model model,
                            @RequestParam(defaultValue = "1",required = false) int pageNumber,
                            @RequestParam(defaultValue = "8",required = false) int pageSize){
        PageInfo<Message> messages=messageService.getMessage(pageNumber,pageSize);
        model.addAttribute("messages",messages);
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
    public String toQuestions(Model model,@RequestParam(defaultValue = "1",required = false) int pageNumber,
                              @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Question> questions=questionService.getAllQuestion(pageNumber,pageSize);
        model.addAttribute("questions",questions);
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
    public String toAddItems(Model model){

        List<Law> lawsList=lawService.getLawsList();
        model.addAttribute("lawsList",lawsList);

        return "addItems";
    }

    @RequestMapping(value = "/addLaws")
    public String toAddLaws(){
        return "addLaws";
    }


    @RequestMapping(value = "/addCatalogs")
    public String toAddCatalogs(Model model){

        List<Law> lawsList=lawService.getLawsList();
        model.addAttribute("lawsList",lawsList);

        return "addCatalogs";
    }

    @RequestMapping(value = "/updLaw")
    public String toUpdLaw(String id,Model model){

        Law lawInfo=lawService.getLawByAlias(id);
        model.addAttribute("lawInfo",lawInfo);

        return "updLaws";
    }






}
