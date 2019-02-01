<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="../static/css/mui.min.css">
    <link rel="stylesheet" href="../static/css/Xq.css">
    <link rel="stylesheet" href="../static/fonts/font_acyazmtbuxi/iconfont.css">
    <link rel="stylesheet" href="../static/fonts/mimasuo/iconfont.css">
    <link rel="stylesheet" href="../static/css/login2.css">
    <style>
        html,body {
            background-color: #fff;

        }
        .title{
            margin: 20px 15px 10px;
            color: #6d6d72;
            font-size: 15px;
        }
        .mui-input-group:before {
            position: absolute;
            top: 0;
            right: 0;
            left: 0;
            height: 0px;
            content: '';
            -webkit-transform: scaleY(.5);
            transform: scaleY(.5);
            background-color: #c8c7cc;
        }
        .mui-input-group:after {
            position: absolute;
            right: 0;
            bottom: 0;
            left: 0;
            height: 0px;
            content: '';
            -webkit-transform: scaleY(.5);
            transform: scaleY(.5);
            background-color: #c8c7cc;
        }
    </style>
</head>
<body>
<header class="mui-bar mui-bar-nav">
    <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
    <h1 id="title" class="mui-title">${laws.lawsPart}部</h1>
    <a class="mui-icon mui-icon-more mui-pull-right"></a>
</header>
<div class="mui-content">
    <div style="height: 50px;background-color: #007aff;position: relative;padding-left: 10px;padding-right: 10px;">
        <div class="header" style="position:relative;width: 100%;top:-2px;text-align: center;margin: 0 auto;">
            <div class="switch" style="display: block; position: absolute;right: 0;left: 0;" id="switch"><a style="color: white;" class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">法规目录</a>
                <a style="color: white;" class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">版本及下载</a><div id="switch_bottom" style="position: absolute; width: 64px; left: 30px;color: #fff;"></div>
            </div>
        </div>
    </div>
    <div style="position:relative;width: 100%;height: 100%;">




        <div class="web_qr_login" id="web_qr_login" style="display: block;">

            <!--法规目录-->
            <#list lawsList as catalog>
                <#if (catalog.cateGrade==1)>
                    <div class="bufen">
                        <div class="bufen-title"><strong>${catalog.cateText}</strong></div>
                    </div>
                <#else>
                    <div class="x-content">
                        <ul>
                            <li class="x-content-div">
                                <a href="detailCatalogPhone?catalogId=${catalog.catalogId}" target="_parent">
                                    <div><strong>${catalog.cateText}</strong></div>
                                    <div></div>
                                    <div><span class="mui-icon mui-icon-arrowright"></span></div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </#if>
            </#list>
            </div>

        <!--注册-->
        <div class="qlogin" id="qlogin" style="display: none; height: 235px;background-color: #fff;padding: 5px;">

            <div style="padding-top: 10px;">
                <h4 style="display: inline-block;color: #007aff;">第${laws.lawsPart}部</h4>
                <strong>${laws.lawsName}</strong>
            </div>
            <div style="padding-top: 5px;font-size: 14px;">
                <span>${laws.lawsState}</span>
            </div>

        </div>
        <!--注册end-->
    </div>
</div>






<script src="../static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../static/js/login.js"></script>
<script>
    mui.init({
        swipeBack:true //启用右滑关闭功能
    });
</script>


</body>
</html>