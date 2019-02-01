package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.Message;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MessageDao {

    List<Message> getMessage();
    Integer delMessage(@Param("mid") Integer mid);
    Message findMessageById(@Param("mid") Integer mid);
}
