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

                        <a href="javascript:void(0)" class="caozuo banji">编辑</a>
                        <input type="hidden" class="id" value="${questions.qid}" />
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
<div style="display: none" id="kuang">
    <table  style="border-collapse:separate;border-spacing: 10px 10px;margin: 20px auto;">
        <tr>
            <td style="width: 80px;vertical-align: top;">反馈内容:</td>
            <td>张先生</td>
            <td>13810770089</td>
        </tr>
        <tr>
            <td>咨询内容:</td>
            <td colspan="2">卡拉加速度快了房间卡拉圣诞节快乐房间卡萨啊数据库来电管家昆仑决更健康的方式更好离开家圣诞快乐鼓风机离开房间多思考两个进口量的飞机上课了估计快了东方健康了就赶快来说的房间观看京东数科了</td>
        </tr>
        <tr>
            <td>相关条数:</td>
            <td colspan="2">第25.391条、第25.393条</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <button class="layui-btn-primary x-btn-sm" style="display: block;margin: 0 auto;" id="guanbi">关闭</button>
            </td>
        </tr>
    </table>

</div>
<script src="static/layui/lay/modules/jquery-3.3.1.min.js"></script>
<script src="static/layui/layui.js"></script>
<script>
    layui.use('layer',function () {
        var layer = layui.layer;
        $(".banji").click(function () {
            layer.open({
                type: 1,
                title:'咨询内容详情',
                area: ['450px', '300px'], //宽高
                content: $('#kuang')
            });
        });
        $("#guanbi").click(function () {
            layer.close(layer.index);
        });
    })
</script>
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
        var id=$(dom).prev().val();
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