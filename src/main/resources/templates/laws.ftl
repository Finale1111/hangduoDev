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
            <div class="daohang">法规管理 / 法规列表</div>
            <div class="title">法规列表</div>
            <div class="content">
                <label class="ziti">
                    *法规编号:
                    <input class="layui-input x-input" type="text">
                </label>
                <label class="ziti">
                    *法规名称:
                    <input class="layui-input x-input" type="text">
                </label>
                <button class="layui-btn layui-btn-primary x-btn">搜索</button>
            </div>
        </header>
        <footer>
            <div>
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-normal" style="float: right;">新增法规</button>
                </div>
                <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                    <thead>
                    <tr>
                        <th>标题</th>
                        <th>标题</th>
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