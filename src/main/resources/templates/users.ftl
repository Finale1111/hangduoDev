<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/Xq.css">
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">用户管理 / 用户列表</div>
        <div class="title">用户列表</div>
        <div class="content">
            <label class="ziti">
                手机号:
                <input placeholder="手机号" class="layui-input x-input" type="text">
            </label>
            <button class="layui-btn layui-btn-primary x-btn">搜索</button>
        </div>
    </header>
    <footer>
        <div>
            <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                <thead>
                <tr>
                    <th>手机号</th>
                    <th>会员类型</th>
                    <th>注册日期</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="w" value="0" title="免费" checked>
                            <input type="radio" name="w" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="a" value="0" title="免费">
                            <input type="radio" name="a" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="b" value="0" title="免费">
                            <input type="radio" name="b" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="c" value="0" title="免费">
                            <input type="radio" name="c" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="d" value="0" title="免费">
                            <input type="radio" name="d" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="e" value="0" title="免费">
                            <input type="radio" name="e" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="f" value="0" title="免费">
                            <input type="radio" name="f" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="g" value="0" title="免费">
                            <input type="radio" name="g" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="h" value="0" title="免费">
                            <input type="radio" name="h" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="j" value="0" title="免费">
                            <input type="radio" name="j" value="1" title="付费">
                        </div>
                    </td>
                    <td>日期</td>
                </tr>
                </tbody>
            </table>
            <div id="page" class="fenye"></div>
        </div>
    </footer>
</div>
<script src="static/layui/layui.js"></script>
<script>
    layui.use('form',function () {
        var form = layui.form;
    })
    layui.use(['laypage','layer'],function () {
        var laypage = layui.laypage;
        laypage.render({
            elem: 'page'
            ,count: 100
            ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
            ,jump: function(obj){
            }
        });
    })
</script>
</body>
</html>