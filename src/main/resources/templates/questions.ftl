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
        <div class="daohang">咨询管理 / 咨询列表</div>
        <div class="title">咨询列表</div>
        <form action="/questionsSearch" method="post">
        <div class="content">
            <label class="ziti">
                联系方式:
                <input placeholder="手机号" name="qstPhone" class="layui-input x-input" type="text">
            </label>
            <label class="ziti">
                咨询内容:
                <input class="layui-input x-input" name="qstContent" type="text">
            </label>
            <input type="submit" class="layui-btn layui-btn-primary x-btn" value="搜索">
        </div>
        </form>
    </header>
    <footer>
        <div>
            <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>咨询内容</th>
                    <th>咨询时间</th>
                    <th>联系方式</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <#list questions.list as questions>
                <tr>
                    <td>${questions.qstName}</td>
                    <td>${questions.qstContent}</td>
                    <td>${questions.qstTime}</td>
                    <td>${questions.qstPhone}</td>
                    <td>
                        <input type="hidden" class="id" value="${questions.qid}" />
                        <a href="#" class="caozuo">编辑</a>
                        <a href="javascript:void(0)" class="caozuo" onclick="delQues(this)">删除</a>
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
        var total=${questions.total};

        laypage.render({
            elem: 'page'
            ,count: total
            ,curr:${questions.pageNum}
            ,limit:${questions.pageSize}
            ,layout: ['count', 'prev', 'page', 'next', 'skip']
            ,jump: function(obj,first){
                if (!first){
                    //alert(JSON.stringify(obj));
                    window.location="questions?pageNumber="+obj.curr;
                }
            }
        });
    })


    function delQues(dom) {
        var id=$(".id").val();
        arr=id.split(",");
        var qid=arr.join("");
        if (confirm('确认删除吗?')) {
            $.post("delQuestion","qid="+qid, function (data) {
                //alert(id);
                if (data.result == "true") {
                    $(dom).parent().parent().remove();
                    window.location.href = "/questions";
                    alert("删除成功!");
                } else {
                    alert("删除失败!");
                }
            }, "json");
        }
    }
</script>
</body>
</html>