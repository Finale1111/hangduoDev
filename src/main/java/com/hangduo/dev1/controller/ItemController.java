package com.hangduo.dev1.controller;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.service.LawService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ItemController {

    @Resource
    LawService lawService;

    @RequestMapping("/lawSearch")
    public String lawSearch(@RequestParam(defaultValue = "0",required = false) int lawNum,
                            @RequestParam(defaultValue = "x",required = false) String lawTitle,
                            Model model,
                            @RequestParam(defaultValue = "1",required = false) int pageNumber,
                            @RequestParam(defaultValue = "30",required = false) int pageSize){
        PageInfo<Law> laws=lawService.searchLaws(pageNumber,pageSize,lawNum,lawTitle);
        model.addAttribute("laws",laws);
        return "laws";
    }


}
