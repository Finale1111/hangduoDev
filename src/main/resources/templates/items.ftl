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
            <form action="/items" method="post">
            <label class="ziti">法&nbsp;&nbsp;&nbsp;规:</label>
            <div class="layui-input-inline x-select">
                <select name="lawAlias">
                    <option value="请选择" selected="selected">请选择</option>
                    <#list lawsList as law>
                        <option value="${law.lawAlias}">${law.lawAlias}&nbsp;${law.lawTitle}</option>
                    </#list>
                </select>
            </div>
        </div>
        <div class="content">
            <label class="ziti">
                条款号:
                <input name="itemNum" class="layui-input x-input" type="text">
            </label>
            <label class="ziti">
                关键词:
                <input name="keywords" class="layui-input x-input" type="text">
            </label>
            <input type="submit" value="搜索" class="layui-btn layui-btn-primary x-btn"/>
        </div>
        </form>
    </header>
    <footer>
        <div>
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal" style="float: right;">新增法规</button>
            </div>
            <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                <thead>
                <tr>
                    <th>条款号</th>
                    <th>条款号别名</th>
                    <th>条款标题</th>
                    <th>所属法规名称</th>
                    <th>版本号</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <#list items.list as item>
                    <tr>
                        <td>${item.itemNum}</td>
                        <td>${item.itemAlias}</td>
                        <td>${item.itemTitle}</td>
                        <td>${item.lawAlias}</td>
                        <td>xx</td>
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
<script src="static/layui/layui.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;

    });
    layui.use(['laypage','layer'],function () {
        var laypage = layui.laypage;
        var total=${items.total}
        laypage.render({
            elem: 'page'
            ,count: total
            ,curr:${items.pageNum}
            ,limit:${items.pageSize}
            ,layout: ['count','prev','page','next','skip']
            ,jump: function(obj,first){
                if (!first){
                    //alert(JSON.stringify(obj));
                    window.location="items?pageNumber="+obj.curr;
                    //+"&lawAlias=";
                }
            }
        });
    })
</script>
</body>
</html>