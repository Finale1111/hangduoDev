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
        <div class="daohang">设置 / 管理员管理</div>
        <div class="title">管理员管理</div>
        <div class="content">
            <label class="ziti">
                *管理员姓名:
                <input placeholder="不超过100个字" style="width: 140px;" class="layui-input x-input" type="text">
            </label>
            <label class="ziti">
                *手机号:
                <input placeholder="请输入手机号" style="width: 140px;" class="layui-input x-input" type="text">
            </label>
            <label class="ziti">
                *密码:
                <input placeholder="6-20位字符" style="width: 140px;" class="layui-input x-input" type="text">
            </label>
            <button class="layui-btn layui-btn-primary x-btn">新增管理员</button>
        </div>
    </header>
    <footer>
        <div>
            <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                <thead>
                <tr>
                    <th>标题</th>
                    <th>标题</th>
                    <th>标题</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>内容</td>
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
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
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
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
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
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
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
                    <td>内容</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                <tr>
                    <td>内容</td>
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