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
    <style>
        html,body {
            background-color: #efeff4;
        }
        .oa-contact-cell.mui-table .mui-table-cell {
            padding: 11px 0;
            vertical-align: middle;
        }

        .oa-contact-avatar img {
            border-radius: 50%;
        }
        .layui-layer-content {
            text-align: center;
            margin-bottom: 30px;
        }

    </style>
</head>
<body>
<div class="mui-content">
    <div style="height: 140px;padding-top: 25px;background: url(../static/images/mine_banner.jpg) no-repeat;-webkit-background-size: 100% 140px;background-size: 100% 140px;text-align: center;">
        <div style="text-align: center;background-color: #fff;width: 75px;height: 75px;margin: 0 auto;border-radius: 50%;line-height: 85px;">
            <img style="width: 50px;height: 30px;" src="../static/images/logo.png" alt=""><br>
        </div>
        <span style="color: #fff;font-size: 14px;margin-top: 5px;">请登录</span>
    </div>
    <div class="x-group">
        <a style="color: #000;text-decoration: none;display: block" target="_parent" href="collection" class="x-group-a">
            <div style="color: #007aff;"><span class="iconfont icon-shoucang"></span></div>
            <div style="margin-left: 5px;">我的收藏</div>
            <div style="position: absolute;right: 0;">
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </a>
        <a class="x-group-a" style="color: #000;text-decoration: none;display: block;margin-bottom: 10px;" target="_parent" href="userListConsult">
            <div style="color: #007aff;"><span class="iconfont icon-history-alarm"></span></div>
            <div style="margin-left: 5px;">历史查询</div>
            <div style="position: absolute;right: 0;">
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </a>
        <a style="color: #000;text-decoration: none;display: block" target="_parent" href="updatePhone" class="x-group-a">
            <div style="color: #007aff;"><span class="iconfont icon-shouji"></span></div>
            <div style="margin-left: 5px;">手机号</div>
            <div style="position: absolute;right: 0;">
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </a>
        <a style="color: #000;text-decoration: none;display: block;margin-bottom: 10px;" target="_parent" href="updatePassword" class="x-group-a">
            <div style="color: #007aff;"><span class="iconfont icon-suo"></span></div>
            <div style="margin-left: 5px;">修改密码</div>
            <div style="position: absolute;right: 0;">
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </a>
        <a style="color: #000;text-decoration: none;display: block;margin-bottom: 10px;" target="_parent" href="toAddLeaveController" class="x-group-a">
            <div style="color: #007aff;"><span class="iconfont icon-yijianfankui"></span></div>
            <div style="margin-left: 5px;">意见反馈</div>
            <div style="position: absolute;right: 0;">
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </a>
        <a style="color: #000;text-decoration: none;display: block;margin-bottom: 10px;" target="_parent" href="javascript:void(0)" class="x-group-a">
            <div style="color: #007aff;"><span class="iconfont icon-guanyuwomen"></span></div>
            <div style="margin-left: 5px;">关于我们</div>
            <div style="position: absolute;right: 0;">
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </a>
    </div>
</div>
<script src="../static/js/jquery-3.3.1.min.js"></script>
<script src="../static/js/mui.min.js"></script>
<script src="../static/layui/layui.js"></script>
<script src="../static/js/plus.js"></script>
<script>
    mui.init({
        swipeBack:true //启用右滑关闭功能
    });
</script>
<script>
    layui.use('layer',function () {
        layer=layui.layer;
        layer.confirm('请登录后查看', {
            btn: ['去登陆'] //按钮
            ,title:' '
            ,skin:'denglu-kuang'
        }, function(){
            parent.window.location.href='loginUser'
        });
    });
</script>
</body>
</html>


