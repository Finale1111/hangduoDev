package com.hangduo.dev1.service.impl;

import com.hangduo.dev1.dao.WebSettingDao;
import com.hangduo.dev1.entity.WebSetting;
import com.hangduo.dev1.service.WebService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class WebServiceImpl implements WebService {
    @Resource
    private WebSettingDao webSettingDao;

    @Override
    public WebSetting getWebsettingById(Integer sid) {
        return webSettingDao.getWebsettingById(sid);
    }

    @Override
    public boolean updWebCpy_info(String cpy_info,Integer sid) {
        return webSettingDao.updWebCpy_info(cpy_info,sid)>0?true:false;
    }

    @Override
    public boolean updWebagreement(String agreement, Integer sid) {
        return webSettingDao.updWebagreement(agreement,sid)>0?true:false;
    }
}
