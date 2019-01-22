<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <link rel="stylesheet" href="../static/css/Xq.css">

</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">法规管理 / 法规目录管理</div>
        <div class="title">法规目录管理</div>
    </header>
    <footer>
        <div>
            <div class="layui-form" style="position: relative;margin: 50px 0px 30px 0px;">
                <label class="layui-form-label">选择法规：</label>
                <form method="post" action="/cataLogListController">
                <div class="layui-input-inline">
                    <select name="cataLaws">
                        <option value="请选择">请选择</option>
                        <#list llist.list as laws>
                        <option value="${laws.lawsId}">${laws.lawsId}</option>
                        </#list>
                    </select>
                </div>
                <button class="layui-btn-primary x-btn-sm" style="margin-left: 50px;" type="submit">确定</button>
                </form>
                <button class="layui-btn layui-btn-normal" style="position: absolute;right: 0;bottom: 1px;" onclick="location.href='cataLogAddController'">新增目录</button>
            </div>

            <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                <thead>
                <tr>
                    <th>目录名称</th>
                    <th>排序</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <#list list  as cataLog>
                <tr>
                    <td>${cataLog.cateText}</td>
                    <td>${cataLog.cateNumber}</td>
                    <td>
                        <a href="" class="caozuo">编辑</a>
                        <a href="" class="caozuo">删除</a>
                    </td>
                </tr>
                </#list>
                </tbody>
            </table>
            <div id="page" class="fenye"></div>
        </div>
    </footer>
</div>
<script src="../static/layui/layui.js"></script>
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
            }  //这是啥?

        });
    })
</script>
</body>
</html>


