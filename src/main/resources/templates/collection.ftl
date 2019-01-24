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
    <h1 id="title" class="mui-title">收藏</h1>
    <a class="mui-icon mui-icon-more mui-pull-right"></a>
</header>
<div class="mui-content">
    <div style="position:relative;width: 100%;height: 100%;">
            <!--法规目录-->
            <div class="bufen">
                <div style="color: #333333;font-size: 14px;">我收藏的部分</div>
            </div>
            <div class="x-content">
                <ul>
                    <li class="x-content-div">
                        <div><strong>第25.1条</strong></div>
                        <div>适用范围</div>
                        <div><span class="mui-icon mui-icon-arrowright"></span></div>
                    </li>
                    <li class="x-content-div">
                        <div><strong>第25.2条</strong></div>
                        <div>【备用】</div>
                        <div><span class="mui-icon mui-icon-arrowright"></span></div>
                    </li>
                    <li class="x-content-div">
                        <div><strong>第25.3条</strong></div>
                        <div>【备用】</div>
                        <div><span class="mui-icon mui-icon-arrowright"></span></div>
                    </li>
                </ul>
            </div>
    </div>
</div>






<script src="../static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script src="../static/js/mui.min.js"></script>
<script>
    mui.init({
        swipeBack:true //启用右滑关闭功能
    });
</script>


</body>
</html>