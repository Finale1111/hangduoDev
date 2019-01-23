package com.hangduo.dev1.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.QuestionDao;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.entity.Question;
import com.hangduo.dev1.service.QuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService {
    @Resource
    QuestionDao questionDao;
    @Override
    public PageInfo<Question> searchQuestions(int pageNum, int pageSize, String qstContent, String qstPhone) {
        PageHelper.startPage(pageNum,pageSize);
        //System.out.println("service:"+qstContent+" "+qstPhone);
        List<Question> questions=questionDao.getQuestionByPhoneandContent(qstPhone,qstContent);

      //  System.out.println(questions.size()+" === ");

        PageInfo<Question> result=new PageInfo<>(questions);

        return result;
    }

    @Override
    public PageInfo<Question> getAllQuestion(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Question> questions=questionDao.getQuestion(pageNum,pageSize);
        PageInfo<Question> result=new PageInfo<>(questions);
        return result;
    }

    @Override
    public boolean DelQuestion(Integer qid) {
        Integer result=questionDao.delQuestion(qid);
        if(result>0){
            return true;
        }
        else{
            return false;
        }
    }
}
