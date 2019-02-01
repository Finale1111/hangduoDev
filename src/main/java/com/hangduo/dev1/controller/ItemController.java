package com.hangduo.dev1.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.LawDao;
import com.hangduo.dev1.entity.Catalog;
import com.hangduo.dev1.entity.Item;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.entity.Question;
import com.hangduo.dev1.service.LawService;
import com.hangduo.dev1.service.QuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
public class ItemController {

    @Resource
    LawService lawService;

    @Resource
    QuestionService questionService;

    @Resource
    LawDao lawDao;

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
    public String catalogSearch(@RequestParam(defaultValue = "请选择",required = false) String lawAlias,
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

    @RequestMapping("/qqdgetCatalogs")
    @ResponseBody
    public List<Catalog> qqd(Model model,String lawAlias){
        System.out.println("wang ying da mei nv");
        System.out.println("c:"+lawAlias);
        List<Catalog> catalogs=lawService.getCatalogsFromLaw(lawAlias,1,10).getList();
        model.addAttribute("catalogs",catalogs);
        return catalogs;
    }



    @RequestMapping("/items")
    public String getItems(@RequestParam(defaultValue = "请选择",required = false) String lawAlias,
                           @RequestParam(defaultValue = "0",required = false) String itemNum,
                           @RequestParam(defaultValue = "x",required = false) String keywords,
                           Model model,
                           @RequestParam(defaultValue = "1",required = false) int pageNumber,
                           @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Item> itemPageInfo;

        itemPageInfo=lawService.getItemsFromLaw(lawAlias,pageNumber,pageSize);
        if(!itemNum.equals("0") || !keywords.equals("x")){
            itemPageInfo=lawService.getItemsMuti(lawAlias,itemNum,keywords,pageNumber,pageSize);
        }


        model.addAttribute("items",itemPageInfo);
        List<Law> lawsList=lawService.getLawsList();
        model.addAttribute("lawsList",lawsList);
        model.addAttribute("lawAlias",lawAlias);
        return "items";
    }



    @RequestMapping(value = "/addLawsAction",method = RequestMethod.POST)
    public String addLaws(Law law,
                          @RequestParam(value = "picPath",required = false)MultipartFile attach,
                          HttpSession session,
                          HttpServletRequest request){
//        String result=null;
//        if (!attach.isEmpty()){
//            String path=request.getSession().getServletContext().getRealPath("static"+File.separator+"logos");
//            int fileSize=50000;
//            if (attach.getSize()>fileSize){
//                System.out.println("尺寸过大");
//            }else{
//                String fileName=attach.getOriginalFilename();
//                File target=new File(path,fileName);
//                if (!target.exists()){
//                    target.mkdirs();
//                }
//                try {
//                    attach.transferTo(target);
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//                String lawLogoUrl=path+File.separator+fileName;
//                System.out.println("*****"+lawLogoUrl);
//            }
//        }
        String desOld=law.getLawDescription();
        int length=desOld.length();
        String desNew=desOld.substring(3,length-4);
        law.setLawDescription(desNew);
        lawService.addLaw(law);
        return "redirect:/laws";
    }

    @RequestMapping("/doCatalogAdd")
    public String addCatalog(Catalog catalog){
        int supCid=catalog.getSupCid();
        int level=0;
        if(supCid==0){
            level=0;
        }
        else{
            level=lawDao.getCatalogByCid(supCid).getcLevel()+1;
        }
        if (lawService.addCatalog(catalog)){
            return "redirect:/catalogSearch";
        }else{
            return "redirect:/error";
        }
    }

    @RequestMapping("/addItemsAction")
    public String addItemsAction(Item item){
        lawService.addItem(item);
        return "redirect:/items";
    }

    @RequestMapping("delLaw")
    @ResponseBody
    public Map<String,String> delLaw(@RequestParam(value="lawAlias",required =false)String lawAlias){
        boolean flag=false;
        flag=lawService.DelLaw(lawAlias);
        Map<String,String> resultMap=new HashMap<String,String>();

        if (flag){
            resultMap.put("result","true");
        }else{
            resultMap.put("result","false");
        }
        return resultMap;
    }

    @RequestMapping("delCatalogAction")
    @ResponseBody
    public Map<String,String> delCatalog(int cid){
        boolean flag=false;
        flag=lawService.delCatalog(cid);
        Map<String,String> resultMap=new HashMap<String,String>();

        if (flag){
            resultMap.put("result","true");
        }else{
            resultMap.put("result","false");
        }
        return resultMap;
    }

    @RequestMapping("delItemAction")
    @ResponseBody
    public Map<String,String> delItemAction(int iid){
        boolean flag=false;
        flag=lawService.delItem(iid);
        Map<String,String> resultMap=new HashMap<String,String>();

        if (flag){
            resultMap.put("result","true");
        }else{
            resultMap.put("result","false");
        }
        return resultMap;
    }


    @RequestMapping("delQuestion")
    @ResponseBody
    public Map<String,String> delQuestion(@RequestParam(value="qid",required =false)Integer qid){
        boolean flag=false;
        flag=questionService.DelQuestion(qid);
        Map<String,String> resultMap=new HashMap<String,String>();
        if (flag){
            resultMap.put("result","true");
        }else{
            resultMap.put("result","false");
        }
        return resultMap;
    }

/*    @RequestMapping("/questionsSearch")
    public String questionsSearch(@RequestParam(defaultValue = "x",required = false) String qstPhone,
                                  @RequestParam(defaultValue = "x",required = false) String qstContent,
                                  Model model,HttpServletRequest request,
                                  @RequestParam(defaultValue = "1",required = false) int pageNumber,
                                  @RequestParam(defaultValue = "10",required = false) int pageSize){
        //System.out.println(qstContent+" "+qstPhone);
        PageInfo<Question> questions= questionService.searchQuestions(pageNumber,pageSize,qstContent,qstPhone);
        if(questions==null){
            request.getSession().setAttribute("err","没有查询结果");
            *//*model.addAttribute("err","没有查询结果");*//*
            System.out.print(request.getSession().getAttribute("err"));
            return "redirect:/questionsSearch";

        }
        model.addAttribute("qstPhone",qstPhone);
        model.addAttribute("qstContent",qstContent);
        model.addAttribute("questions",questions);
        return "questions";
    }*/


    @RequestMapping("/questionsSearch")
    public String questionsSearch(@RequestParam(defaultValue = "x",required = false) String qstPhone,
                                  @RequestParam(defaultValue = "x",required = false) String qstContent,
                                  Model model,HttpServletRequest request,
                                  @RequestParam(defaultValue = "1",required = false) int pageNumber,
                                  @RequestParam(defaultValue = "10",required = false) int pageSize){
        //System.out.println(qstContent+" "+qstPhone);
        request.getSession().removeAttribute("err");
        PageInfo<Question> questions= questionService.searchQuestions(pageNumber,pageSize,qstContent,qstPhone);
        List<Question> list=new ArrayList<>();
        if(!qstPhone.equals("x") || !qstContent.equals("x")){
            list=questionService.getQuestionByPhoneandContent(qstPhone,qstContent);
        }
        if (list.size()==0){
            request.getSession().setAttribute("err","没有查询结果");
            return "redirect:/questionsSearch1";
        }
        model.addAttribute("qstPhone",qstPhone);
        model.addAttribute("qstContent",qstContent);
        model.addAttribute("questions",questions);
        return "questions";
    }

    @RequestMapping("/questionsSearch1")
    public String questionsSearch1(@RequestParam(defaultValue = "x",required = false) String qstPhone,
                                   @RequestParam(defaultValue = "x",required = false) String qstContent,
                                   Model model,HttpServletRequest request,
                                   @RequestParam(defaultValue = "1",required = false) int pageNumber,
                                   @RequestParam(defaultValue = "10",required = false) int pageSize){
        PageInfo<Question> questions= questionService.searchQuestions(pageNumber,pageSize,qstContent,qstPhone);
        model.addAttribute("qstPhone",qstPhone);
        model.addAttribute("qstContent",qstContent);
        model.addAttribute("questions",questions);
        return "questions";
    }


    @RequestMapping("/updLawAction")
    public String updLawAction(Law law,HttpServletRequest request){
        String desOld=law.getLawDescription();
        int length=desOld.length();
        String desNew=desOld.substring(3,length-4);
        law.setLawDescription(desNew);
        boolean result=lawService.updLaw(law);
        if(result){
          request.getSession().setAttribute("message","编辑成功");
            return "redirect:/laws";
        }
        else{
            request.getSession().setAttribute("message","编辑失败");
            return "updLaw";
        }

    }

    @RequestMapping("/updItemsAction")
    public String updItemsAction(Item item){
        lawService.updItem(item);
        return "redirect:/items";
    }

    @RequestMapping("findQuestionById")
    @ResponseBody
    public JSON findQuestionById(@RequestParam(value ="qid",required =false)Integer qid){
        Question question=questionService.findQuestionById(qid);
        return (JSON) JSON.toJSON(question);
    }

}
