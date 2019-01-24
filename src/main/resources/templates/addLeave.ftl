<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="./css/mui.min.css">
    <link rel="stylesheet" href="./css/Xq.css">
    <link rel="stylesheet" href="./fonts/font_acyazmtbuxi/iconfont.css">
    <link rel="stylesheet" href="./fonts/mimasuo/iconfont.css">
    <link rel="stylesheet" href="./css/login2.css">
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
    <h1 id="title" class="mui-title">意见反馈</h1>
    <a class="mui-icon mui-icon-more mui-pull-right"></a>
</header>
<div class="mui-content" style="background-color: #fff;">
    <div style="margin-top: 20px;text-align: center;">
        <textarea id="hcqk" style="background-color: #f7f7f7;border-radius: 5px;font-size: 14px;width: 305px;height: 150px;" rows="5" placeholder="欢迎提出宝贵的意见和建议(500字以内)"></textarea>
        <button type="button" class="mui-btn mui-btn-primary mui-btn-outlined" style="background-color: #007aff;display: block;margin: 30px auto 20px;color: white;width: 200px;">提交</button>
    </div>
</div>






<script src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script src="./js/mui.min.js"></script>
<script>
    mui.init({
        swipeBack:true //启用右滑关闭功能
    });
</script>


</body>
</html>


