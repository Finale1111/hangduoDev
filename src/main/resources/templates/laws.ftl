<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/Xq.css">
    <script src="static/js/jquery-1.9.1.min.js"></script>
</head>
<body>

    <div class="overall">
        <header>
            <div class="daohang">法规管理 / 法规列表</div>
            <div class="title">法规列表</div>
            <div class="content">
                <form action="/lawSearch" method="post">
                    <label class="ziti">
                        *法规编号:
                        <input name="lawNum" class="layui-input x-input" type="text">
                    </label>
                    <label class="ziti">
                        *法规名称:
                        <input name="lawTitle" class="layui-input x-input" type="text">
                    </label>
                    <input type="submit" class="layui-btn layui-btn-primary x-btn" value="搜索"/>
                </form>
            </div>
        </header>
        <footer>
            <div>
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-normal" style="float: right;" onclick="toAddLaws()">新增法规</button>
                </div>
                <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                    <thead>
                    <tr>
                        <th>部号</th>
                        <th>法规部号别名</th>
                        <th>版本号</th>
                        <th>法规名称</th>
                        <th>前台显示</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <#list laws.list as law>
                        <tr>
                            <td>${law.lawNum}</td>
                            <td>${law.lawAlias}</td>
                            <td>${law.lawVersion}</td>
                            <td>${law.lawTitle}</td>
                            <td>
                                <#if law.showStatus==1>
                                    显示
                                <#elseif law.showStatus==0>
                                    不显示
                                </#if>

                            </td>
                            <td>
                                <a href="/updLaw?id=${law.lawAlias}" class="caozuo">编辑</a>
                                <input type="hidden" class="lawAlias" value="${law.lawAlias}">
                                <a href="" class="caozuo" onclick="delLaw(this)">删除</a>
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
        layui.use(['laypage','layer'],function () {
            var laypage = layui.laypage;
            var total=${laws.total};

            laypage.render({
                elem: 'page'
                ,count: total
                ,curr:${laws.pageNum}
                ,limit:${laws.pageSize}
                ,layout: ['count', 'prev', 'page', 'next', 'skip']
                ,jump: function(obj,first){
                    if (!first){
                        //alert(JSON.stringify(obj));
                        window.location="laws?pageNumber="+obj.curr;
                    }
                }
            });
        })

        function toAddLaws() {
            window.location.href="addLaws";
        }

        function delLaw(dom) {
            var id=$(dom).prev().val();
            arr=id.split("-");
            var laws=arr.join("-");
            if (confirm('确认删除吗?')) {
                $.post("delLaw","lawAlias="+laws,function (data) {
                    if (data.result=="true") {
                        alert("删除成功!");
                    } else {
                        alert("删除失败!");
                    }
                },"json");
            }
        }

    </script>
</body>
</html>