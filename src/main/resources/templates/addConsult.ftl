<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="../static/css/mui.min.css">
    <style>
        html,body {
            background-color: #efeff4;
        }
        .title {
            padding: 20px 15px 10px;
            color: #6d6d72;
            font-size: 15px;
            background-color: #fff;
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
        .mui-input-group div {
            margin-bottom: 10px;
            border-radius: 5px;
        }
        .mui-input-group div span {
            color: #007aff;
        }
    </style>
</head>
<body>
<div class="mui-content">
    <div style="height: 95px;background:url(../static/images/service_banner.jpg) no-repeat;-webkit-background-size: 100% 135px;background-size: 100% 135px;">
        <div style="text-align: center;font-size: 16px;color: white;padding-top: 20px;">
            <span>请留意您的联系方式和咨询问题</span><br>
            <span>我们会安排专业顾问跟您联系</span>
        </div>
    </div>
    <div style="width: 100%;background-color: #fff;border-radius: 5px;">

        <div class="mui-input-group" style="padding: 10px 20px 10px 20px;">
            <div style="background-color: #f7f7f7;">
                <label style="width: 18%;"><span class="mui-icon mui-icon-person"></span></label>
                <input style="font-size: 16px;width: 82%;" type="text" placeholder="请输入姓名，不超过10个字">
            </div>
            <div style="background-color: #f7f7f7;">
                <label style="width: 18%;"><span class="mui-icon mui-icon-phone"></span></label>
                <input style="font-size: 16px;width: 82%;" type="text" placeholder="请输入手机号">
            </div>
            <div style="background-color: #f7f7f7;">
                <label style="width: 18%;"><span class="mui-icon mui-icon-compose"></span></label>
                <input style="font-size: 16px;width: 82%;" type="text" placeholder="请输入相关条款编号，不超过100字">
            </div>
            <div>
                <label for="hcqk" style="font-size: 10px;padding-left: 5px;">问题描述：</label>
                <textarea id="hcqk" style="background-color: #f7f7f7;border-radius: 5px;font-size: 16px;" rows="5" placeholder="字数限制30到500之间"></textarea>
            </div>
            <div style="text-align: center;">
                <button type="button" class="mui-btn mui-btn-primary mui-btn-outlined" style="background-color: #007aff; color: white;width: 280px;">提交</button>
            </div>

        </div>
    </div>
</div>
<script src="../static/js/mui.min.js"></script>
<script>
    mui.init({
        swipeBack: false,
    });
</script>
</body>
</html>


