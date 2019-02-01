package com.hangduo.dev1.service;

import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.entity.Message;

public interface MessageService {

    PageInfo<Message> getMessage(int pageNum, int pageSize);
   boolean delMessages(Integer mid);
   Message findMessageById(Integer mid);
}
