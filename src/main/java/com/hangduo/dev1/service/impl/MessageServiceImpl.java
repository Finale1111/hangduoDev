package com.hangduo.dev1.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hangduo.dev1.dao.MessageDao;
import com.hangduo.dev1.entity.Message;
import com.hangduo.dev1.service.MessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Resource
    MessageDao messageDao;

    @Override
    public PageInfo<Message> getMessage(int pageNum, int pageSize){
        PageHelper.startPage(pageNum,pageSize);

        List<Message> messageList =messageDao.getMessage();
        for(Message m:messageList){
            if(m.getMsgContent().length()>7){
                String msgMini=m.getMsgContent().substring(0,5)+"...";
                m.setMsgMini(msgMini);
            }
            else{
                m.setMsgMini(m.getMsgContent());
            }
        }
        PageInfo<Message> messages=new PageInfo<>(messageList);
        return messages;
    }

    @Override
    public boolean delMessages(Integer mid) {
        Integer result=messageDao.delMessage(mid);
        if(result>0){
            return true;
        }
        return false;
    }

    @Override
    public Message findMessageById(Integer mid) {
        return messageDao.findMessageById(mid);
    }
}
