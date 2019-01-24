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
            background-color: #efeff4;

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
    <h1 id="title" class="mui-title">历史查询</h1>
    <a class="mui-icon mui-icon-more mui-pull-right"></a>
</header>
<div class="mui-content">
    <div class="x-lishi">
        <div>
            <img style="width: 16.5px;height: 15.5px;" src="../static/images/date.png" alt="">
            <span class="x-riqi">2018-12-24</span>
        </div>
        <div>
            <span class="x-content" style="font-size: 15px;color: #333333;">
                咨询问题咨询问题咨询问题咨询咨询问题咨询问题咨询问题咨询问题咨询问题咨询问题咨询问题aaaaa
            </span>
            <a class="gengduo" href="javascript:void(0)" onclick="tan()">更多</a>
        </div>
    </div>
</div>






<script src="../static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script src="../static/js/mui.min.js"></script>
<script src="../static/layui/layui.js"></script>
<script>

    mui.init({
        swipeBack:true //启用右滑关闭功能
    });

</script>
<script>
    $(function () {
        $(".x-content").each(function() {
            var words = $(this).text().length;
            if(words > 59){
                $(this).text($(this).text().slice(0,59)+"...");
            }
        });
    });
</script>
<script>
    layui.use('layer',function () {
        layer=layui.layer;
    })
    function tan() {
        layer.open({
            type: 1
            ,skin:'tan-yangshi'
            ,title:'咨询问题<span style="color: #007aff;padding-left: 5px;">(2018-12-24)</span>'
            ,area: ['100%', '525px']
            ,offset: 'b' //具体配置参考：offset参数项,
            ,content: '咨询问题详情'
            ,btnAlign: 'b' //按钮居中
            ,shade: 0.5 //不显示遮罩
        });
    }
</script>

</body>
</html>


