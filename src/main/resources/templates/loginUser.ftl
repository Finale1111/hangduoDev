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
    <h1 id="title" class="mui-title">登录</h1>
    <a class="mui-icon mui-icon-more mui-pull-right"></a>
</header>
<div class="mui-content">
    <div style="height: 160px;background:url(../static/images/banner.jpg) no-repeat;-webkit-background-size: 100% 160px;background-size: 100% 160px;position: relative;padding-left: 10px;padding-right: 10px;">
        <a href="indexPhone" style="position: absolute;right: 10px;top: 5px;color: #fff;text-decoration: none;">游客访问</a>
        <div class="header" style="position:relative;width: 100%;top:108px;text-align: center;margin: 0 auto;">
            <div class="switch" style="display: block; position: absolute;right: 0;left: 0;" id="switch"><a style="color: white;" class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">密码登录</a>
                <a style="color: white;" class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">验证码登录</a><div id="switch_bottom" style="position: absolute; width: 64px; left: 30px;color: #fff;"></div>
            </div>
        </div>
    </div>
    <div style="position:relative;width: 100%;height: 100%;">




        <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;background-color: #fff;">

            <!--登录-->
            <div class="mui-input-group" style="padding: 20px 20px 0px 20px;position: relative;">
                <div class="mui-input-row">
                    <label style="width: 18%;color: #007aff;"><span class="mui-icon mui-icon-phone"></span></label>
                    <input style="font-size: 16px;width: 82%;" type="text" id="phone" name="phone" placeholder="手机号">
                </div>
                <div class="mui-input-row">
                    <label style="width: 18%;color: #007aff;"><span style="font-size: 20px;" class="iconfont icon-mimasuo"></span></label>
                    <input style="font-size: 16px;width: 82%;" type="password" id="pwd" name="pwd" placeholder="密码">
                </div>
                <a style="position: absolute;right: 25px;" href="forgetPassword">忘记密码</a>
                <button type="button" class="mui-btn mui-btn-primary mui-btn-outlined" style="background-color: #007aff;display: block;margin: 30px auto 20px;color: white;width: 200px;" onclick="login()">登录</button>
            </div>
            <div style="text-align: center;">
                <a href="addUser">注册</a>
            </div>
            <!--登录end-->
        </div>

        <!--注册-->
        <div class="qlogin" id="qlogin" style="display: none; height: 235px;background-color: #fff;">

            <div class="mui-input-group" style="padding: 20px 20px 0px 20px;position: relative;">
                <div class="mui-input-row">
                    <label style="width: 18%;color: #007aff;"><span class="mui-icon mui-icon-phone"></span></label>
                    <input style="font-size: 16px;width: 82%;" type="text" placeholder="手机号">
                </div>
                <div class="mui-input-row">
                    <label style="width: 18%;color: #007aff;"><span style="font-size: 20px;" class="mui-icon mui-icon-chatboxes"></span></label>
                    <input style="font-size: 16px;width: 82%;" type="text" placeholder="短信验证码">
                </div>
                <a style="position: absolute;right: 25px;bottom: 45%;" href="">发送验证码</a>
                <button type="button" class="mui-btn mui-btn-primary mui-btn-outlined" style="background-color: #007aff;display: block;margin: 30px auto 20px;color: white;width: 200px;">登录</button>
            </div>
            <div style="text-align: center;">
                <a style="font-size: 16px;" href="addUser">注册</a>
            </div>

        </div>
        <!--注册end-->
    </div>
</div>


<script src="../static/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../static/js/login.js"></script>
<script src="../static/js/mui.min.js"></script>
<script>
    mui.init({
        swipeBack:true //启用右滑关闭功能
    });
    
    function login() {
        var phone=$("#phone").val();
        var pwd=$("#pwd").val();
        window.location.href="login?phone="+phone+"&pwd="+pwd;
    }
</script>

</body>
</html>