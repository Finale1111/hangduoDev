<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/Xq.css">
</head>
<body style="width: 1149px;">
<div class="overall">
    <header>
        <div class="daohang">设置 / 意见反馈列表</div>
        <div class="title">意见反馈列表</div>
    </header>
    <footer>
        <div>
            <table class="layui-table" style=" word-break: break-all; word-wrap: break-word">
                <colgroup>
                    <col>
                    <col>
                    <col width="200">
                </colgroup>
                <thead>
                <tr>
                    <th>标题</th>
                    <th>标题</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                </tbody>
            </table>
            <div id="page" class="fenye"></div>
        </div>
    </footer>
</div>
<script src="static/layui/layui.js"></script>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

    });
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