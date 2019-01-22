package com.hangduo.dev1.controller;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Item;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.service.LawService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.LinkedList;
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
                            @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Law> laws=lawService.searchLaws(pageNumber,pageSize,lawNum,lawTitle);
        model.addAttribute("laws",laws);
        return "laws";
    }

    @RequestMapping("/catalogSearch")
    public String catalogSearch(@RequestParam(defaultValue = "CCAR-23-R3",required = false) String lawAlias,
                                Model model,
                                @RequestParam(defaultValue = "1",required = false) int pageNumber,
                                @RequestParam(defaultValue = "10",required = false) int pageSize){
        System.out.println("查目录："+lawAlias);
        //List<Catalog> headCatalogs= lawService.getCatalogsFromLaw(lawAlias,pageNumber,pageSize).getList();
//        LinkedList<Catalog> catalogs=new LinkedList<>();
//        for (int i=0;i<headCatalogs.size();i++){
//            catalogs.addLast(headCatalogs.get(i));
//            List<Catalog> subCatalogs=lawService.getSubCalogs(headCatalogs.get(i).getCid());
//            for (int j=0;j<subCatalogs.size();j++){
//                catalogs.addLast(subCatalogs.get(j));
//                List<Catalog> doubleSubCatalogs=lawService.getSubCalogs(subCatalogs.get(j).getCid());
//                for (int k=0;k<doubleSubCatalogs.size();k++){
//                    catalogs.addLast(doubleSubCatalogs.get(k));
//                    List<Catalog> tripleSubCatalogs=lawService.getSubCalogs(doubleSubCatalogs.get(k).getCid());
//                    for (int l=0;l<tripleSubCatalogs.size();l++){
//                        catalogs.addLast(tripleSubCatalogs.get(l));
//                    }
//                    tripleSubCatalogs.clear();
//                }
//                doubleSubCatalogs.clear();
//            }
//            subCatalogs.clear();
//        }

//        PageInfo<Catalog> catalogPageInfo=new PageInfo<>(catalogs);
//        System.out.println("======="+catalogPageInfo.getPageSize());
//        //catalogPageInfo.setPageNum(pageNumber);
//        System.out.println("!!!!!!!!!!!"+pageSize);
//        catalogPageInfo.setPageSize(10);
        PageInfo<Catalog> catalogs=lawService.getCatalogsFromLaw(lawAlias,pageNumber,pageSize);
        model.addAttribute("catalogs",catalogs);
        List<Law> lawsList=lawService.getLawsList();
        model.addAttribute("lawsList",lawsList);
        model.addAttribute("lawAlias",lawAlias);
        return "catalogs";
    }



    @RequestMapping("/items")
    public String getItems(@RequestParam(defaultValue = "CCAR-23-R3",required = false) String lawAlias,
                           @RequestParam(defaultValue = "",required = false) String itemInum,
                           @RequestParam(defaultValue = "",required = false) String keyWord,
                           Model model,
                           @RequestParam(defaultValue = "1",required = false) int pageNumber,
                           @RequestParam(defaultValue = "10",required = false) int pageSize){

        PageInfo<Item> itemPageInfo=lawService.getItemsFromLaw(lawAlias,pageNumber,pageSize);
        model.addAttribute("items",itemPageInfo);
        List<Law> lawsList=lawService.getLawsList();
        model.addAttribute("lawsList",lawsList);
        return "items";
    }

    @RequestMapping("/addLawsAction")
    public String addLaw(Model model){
        return null;

    }


}
