package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.Law;
import com.hangduo.dev1.entity.Question;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QuestionDao {
    List<Question> getQuestion(int pageNum, int pageSize);

    List<Question> getQuestionByPhoneandContent(@Param("qstPhone") String qstPhone, @Param("qstContent") String qstContent);


    Integer delQuestion(@Param("qid") Integer qid);

    Question getQuestionById(@Param("qid")Integer qid);

}
