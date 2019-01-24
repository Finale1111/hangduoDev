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
    <link rel="stylesheet" href="../static/fonts/mimasuo/iconfont.css">
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
    <h1 id="title" class="mui-title">忘记密码</h1>
    <a class="mui-icon mui-icon-more mui-pull-right"></a>
</header>
<div class="mui-content">
    <div class="mui-input-group" style="padding: 20px 20px 0px 20px;position: relative;">
        <div class="mui-input-row">
            <label style="width: 18%;color: #007aff;"><span class="mui-icon mui-icon-phone"></span></label>
            <input style="font-size: 16px;width: 82%;" type="text" placeholder="手机号">
        </div>
        <div class="mui-input-row">
            <label style="width: 18%;color: #007aff;"><span style="font-size: 20px;" class="mui-icon mui-icon-chatboxes"></span></label>
            <input style="font-size: 16px;width: 82%;" type="text" placeholder="短信验证码">
        </div>
        <a style="position: absolute;right: 25px;bottom: 55%;font-size: 10px;" href="">发送验证码</a>
        <div class="mui-input-row">
            <label style="width: 18%;color: #007aff;"><span style="font-size: 20px;" class="iconfont icon-mimasuo"></span></label>
            <input style="font-size: 16px;width: 82%;" type="text" placeholder="设置密码">
        </div>
        <button type="button" class="mui-btn mui-btn-primary mui-btn-outlined" style="background-color: #007aff;display: block;margin: 30px auto 20px;color: white;width: 200px;">设置密码</button>
    </div>
</div>
</body>
</html>