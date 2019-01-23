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
                    <th>意见反馈内容</th>
                    <th>意见反馈时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <#list messages.list as message>
                <tr>
                    <td>${message.msgContent}</td>
                    <td>${message.msgTime}</td>
                    <td>
                        <input type="hidden" value="${message.mid}" class="id" >
                        <a href="#" class="caozuo">查看</a>
                        <a href="javascript:void(0)" class="caozuo" onclick="delMessa(this)">删除</ a>
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

<script></script>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

    });
    layui.use(['laypage','layer'],function () {
        var laypage = layui.laypage;
        var total=${messages.total}
                laypage.render({
                    elem: 'page'
                    ,count: total
                    ,curr:${messages.pageNum}
                    ,limit:${messages.pageSize}
                    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
                    ,jump: function(obj,first){
                        if(!first){
                            window.location="messages?pageNumber="+obj.curr;
                        }
                    }
                });
    })
    function delMessa(dom) {
        var id=$(".id").val();
        arr=id.split(",");
        var mid=arr.join("");
        if (confirm('确认删除吗?')) {
            $.post("delMess","mid="+mid,function (data) {
              //  alert(mid);
                if (data.result == "true") {
                    $(dom).parent().parent().remove();
                    window.location.href = "/messages";
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