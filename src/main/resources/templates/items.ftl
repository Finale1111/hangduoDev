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
        <div class="daohang">法规管理 / 条款列表</div>
        <div class="title">条款列表</div>
        <div class="layui-form content">
            <label class="ziti">法&nbsp;&nbsp;&nbsp;规:</label>
            <div class="layui-input-inline x-select">
                <select name="quiz">
                    <option value="请选择">请选择</option>
                    <option value="CCAR-21-R4 民用航空产品和零部件合格审定规定">民用航空产品和零部件合格审定规定</option>
                    <option value="CCAR-23-R3正常类、实用类、特技类和通勤类飞机适航标准">CCAR-23-R3正常类、实用类、特技类和通勤类飞机适航标准</option>
                    <option value="CCAR-25-R4运输类飞机适航标准">CCAR-25-R4运输类飞机适航标准</option>
                    <option value="CCAR-26运输类飞机的持续适航和安全改进规定">CCAR-26运输类飞机的持续适航和安全改进规定</option>
                    <option value="CCAR-27-R1正常类旋翼航空器适航规定">CCAR-27-R1正常类旋翼航空器适航规定</option>
                    <option value="CCAR-29-R1运输类旋翼航空器适航规定">CCAR-29-R1运输类旋翼航空器适航规定</option>
                </select>
            </div>
        </div>
        <div class="content">
            <label class="ziti">
                条款号:
                <input class="layui-input x-input" type="text">
            </label>
            <label class="ziti">
                关键词:
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