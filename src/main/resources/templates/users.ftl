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
        <div class="daohang">用户管理 / 用户列表</div>
        <div class="title">用户列表</div>
        <div class="content">
            <form action="/userSearch" method="post">
                <label class="ziti">
                    手机号:
                    <input placeholder="手机号" name="userPhone" class="layui-input x-input" type="text">
                </label>
                <input type="submit" class="layui-btn layui-btn-primary x-btn" value="搜索"/>
            </form>
        </div>
    </header>
    <footer>
        <div>
            <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>手机号</th>
                    <th>性别</th>
                    <th>会员类型</th>
                    <th>注册日期</th>
                </tr>
                </thead>
                <tbody>
                <#list users.list as user>
                    <tr>
                        <td>${user.userName}</td>
                        <td>${user.userPhone}</td>
                        <td>${user.userSex}</td>
                        <td class="layui-form">
                            <div class="layui-input-block" style="margin-left: 0px">
                                <input type="radio" class="cb-radio" value="0" title="免费" checked>
                                <input type="radio" class="cb-radio" value="1" title="付费">
                                <#--<input type="radio" class="cb-radio" id="r1" name="rd" value="left"/>

                                <input type="radio" class="cb-radio cb-gap2" id="r2" name="rd" value="right"/>

                                <button id="btn" type="radio" class="btn btn-primary cb-gap">免费</button>

                                <button id="btn2" type="radio" class="btn btn-primary cb-gap">付费</button>-->

                            </div>
                        </td>
                        <td>${user.regDate}</td>
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
    layui.use('form',function () {
        var form = layui.form;
    })
    layui.use(['laypage','layer'],function () {
        var laypage = layui.laypage;
        var total=${users.total}
        laypage.render({
            elem: 'page'
            ,count: total
            ,curr:${users.pageNum}
            ,limit:${users.pageSize}
            ,layout: ['count', 'prev', 'page', 'next',  'skip']
            ,jump: function(obj,first){
                if (!first){
                    //alert(JSON.stringify(obj));
                    window.location="users?pageNumber="+obj.curr;
                }
            }
        });
    })
    $(function () {
        $(".layui-anim").click(function () {
            alert(1);
        });
    });

    //var radios = $(".cb-radio");
/* function btn1(){
        $(".cb-radio").eq(0).attr("checked", true);
        $(".cb-radio").eq(1).attr("checked", false);
        alert("修改此用户为免费用户");
    }
    function btn2(){
        $(".cb-radio").eq(0).attr("checked", false);
        $(".cb-radio").eq(1).attr("checked", true);
        alert("修改此用户为付费用户");
    }*/
</script>
</body>
</html>