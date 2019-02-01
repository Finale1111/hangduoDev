package com.hangduo.dev1.dao;

import com.hangduo.dev1.entity.WebSetting;
import org.apache.ibatis.annotations.Param;

public interface WebSettingDao {
    WebSetting getWebsettingById(@Param("sid")Integer sid);
    Integer updWebCpy_info(@Param("cpy_info")String cpy_info,@Param("sid")Integer sid);
    Integer updWebagreement(@Param("agreement")String agreement,@Param("sid")Integer sid);
}
