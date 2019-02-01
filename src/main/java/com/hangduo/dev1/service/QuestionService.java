package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.entity.Question;

import java.util.List;

public interface QuestionService {

    PageInfo<Question> searchQuestions(int pageNum, int pageSize, String qstContent, String qstPhone);

    PageInfo<Question> getAllQuestion(int pageNum, int pageSize);


    boolean DelQuestion(Integer qid);

    Question findQuestionById(Integer qid);
    List<Question> getQuestionByPhoneandContent(String qstPhone, String qstContent);

}
