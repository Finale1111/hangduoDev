package com.hangduo.dev1.service;

import com.hangduo.dev1.entity.WebSetting;
import org.apache.ibatis.annotations.Param;

public interface WebService {
    WebSetting getWebsettingById(Integer sid);
    boolean updWebCpy_info(String cpy_info,Integer sid);
    boolean updWebagreement(String agreement,Integer sid);
}
