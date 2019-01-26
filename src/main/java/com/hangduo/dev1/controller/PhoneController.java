package com.hangduo.dev1.controller;

import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.entity.User;
import com.hangduo.dev1.service.LawService;
import com.hangduo.dev1.service.PhoneUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PhoneController {


    @Resource
    PhoneUserService phoneUserService;
    @Resource
    LawService lawService;


    //初始化手机
    @RequestMapping("/init")
    public String init(){
        return "loginUser";
    }
    //登录页
    @RequestMapping("/loginUser")
    public String loginUser(){
        return "loginUser";
    }
    //忘记密码
    @RequestMapping("/forgetPassword")
    public String forgetPassword(){
        return "forgetPassword";
    }
    //注册页
    @RequestMapping("/addUser")
    public String addUser() {
        return "addUser";
    }
    //游客访问--无session主页
    //登录成功
    @RequestMapping("/indexPhone")
    public String Phone(){
        return "indexPhone";
    }


    @RequestMapping("/login")
    public String login(String phone, String pwd, HttpSession session){

        if (phoneUserService.checkLogin(phone,pwd)){
            User user=phoneUserService.getUserByPhoneNum(phone);
            session.setAttribute("user",user);
            return "redirect:indexPhone";
        }else{
            return "redirect:loginUser";
        }
    }


    @RequestMapping("/about")
    public String aboutIndex(Model model){
        List<Law> laws = lawService.getLawsList();
        model.addAttribute("laws",laws);
        return  "about";
    }

    //跳去法规目录页面
    @RequestMapping("/detailLaws")
    public String detailLaws(Model model,String lawAlias){

        List<Catalog> catalogs=lawService.getCatalogsFromLaw(lawAlias);

        for (Catalog catalog:catalogs){
            System.out.println(catalog.getCid()+" "+catalog.getcLevel()+" "+catalog.getCatalogContent());
        }

        Law law=lawService.getLawByAlias(lawAlias);
        model.addAttribute("catalogs",catalogs);
        model.addAttribute("law",law);
        return  "ceshi";
        //return  "detailLaws";
    }








    @RequestMapping("/question")
    public String questions(){

        return  "questions";
    }
    @RequestMapping("/my")
    public String my(){

        return  "my";
    }

    @RequestMapping("/detailCatalog")
    public String detailCatalog(){

        return  "detailCatalog";
    }
    @RequestMapping("/collection")
    public String collection(){

        return  "collection";
    }
    @RequestMapping("/detailConsult")
    public String detailConsult(){

        return  "detailConsult";
    }

    @RequestMapping("/userConsult")
    public String userConsult(){

        return  "userConsult";
    }
    @RequestMapping("/Phone")
    public String userDataPhone(){

        return  "updatePhone";
    }
    @RequestMapping("/Password")
    public String userDataPassword(){

        return  "userDataPassword";
    }
    @RequestMapping("/Catalogs")
    public String addCatalogs(){

        return  "addCatalogs";
    }


}
