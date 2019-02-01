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
        <div class="daohang">设置 / 管理员管理</div>
        <div class="title">管理员管理</div>
        <div class="content">
            <label class="ziti">
                *管理员姓名:
                <input placeholder="不超过100个字" style="width: 140px;" class="layui-input x-input" type="text" name="adminName" id="adminName">
            </label>
            <label class="ziti">
                *手机号:
                <input placeholder="请输入手机号" style="width: 140px;" class="layui-input x-input" type="text" name="adminPhone" id="adminPhone">
            </label>
            <label class="ziti">
                *密码:
                <input placeholder="6-20位字符" style="width: 140px;" class="layui-input x-input" type="text" name="adminPassword" id="adminPassword">
            </label>
            <button class="layui-btn layui-btn-primary x-btn" onclick="addAdmins()">新增管理员</button>
            <div> <#if message??>
                <a>${message}</a>
            </#if></div>

</div>
</header>
<footer>
    <div>
        <table class="layui-table" style="word-break:break-all; word-wrap: break-word">
            <thead>
            <tr>
                <th>管理员手机号</th>
                <th>管理员姓名</th>
                <th>添加日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <#list admins.list as admin>
            <tr>
                <td>${admin.adminPhone}</td>
                <td>${admin.adminName}</td>
                <td>${admin.regDate}</td>
                <td>
                    <a href="javascript:void(0)" class="caozuo bianji" onclick="bianji(${admin.aid})">编辑</a>
                    <input type="hidden" value="${admin.aid}" >
                    <a href="javascript:void(0)" class="caozuo" onclick="delAdm(${admin.aid},this)">删除</a>
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
        <table style="border-collapse:separate;border-spacing: 10px 10px;margin: 0 auto;">
            <tr>
                <td style="text-align: right;">*手机号</td>
                <td> <input class="layui-input x-input" type="text" id="glyPhone"></td>
            </tr>
            <tr>
                <td style="text-align: right;">*管理员姓名</td>
                <td>
                    <input class="layui-input x-input" type="text" id="glyName">
                </td>
            </tr>
            <tr>
                <td style="text-align: right;">*密码</td>
                <td>
                    <input class="layui-input x-input" id="password" type="password">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input class="layui-btn-primary x-btn-sm" style="margin-left: 50px;" type="submit" value="保存" onclick="updAdm()">
                    <input type="hidden"  >
                    <button class="layui-btn-primary x-btn-sm" style="margin-left: 50px;" id="guanbi">关闭</button>
                </td>
            </tr>
        </table>

</div>
<script src="static/js/jquery-3.3.1.min.js"></script>
<script src="static/layui/layui.js"></script>
<script>
    layui.use('layer',function () {
        var layer = layui.layer;
      /*  $(".bianji").click(function () {
          var aid=$(".aid").val();
          $.post("adminById","aid="+aid,function(data){
              layer.open({
                  type: 1,
                  title:'编辑信息',
                  area: ['420px', '240px'], //宽高
                  content: $('#kuang')
              });
              $("#glyName").val(data.adminName);
          },"json")


       /*     var glyName=$("#glyName").val();
          var password=$("#password").val();
            $.post("updAdmin","aid="+aid+"&glyName="+glyName+"&password="+password,function (data) {
                  if(data.message=="true"){
                      alert("管理员密码修改成功");
                      window.location.href="admins";
                  }
                  else{
                      alert("管理员密码修改失败");
                  }
            },"json")

        });*/
        $("#guanbi").click(function () {
            layer.close(layer.index);
        });
    })
</script>
<script>
    layui.use(['laypage','layer'],function () {
        var laypage = layui.laypage;
        var layer = layui.layer;
        var total=${admins.total};
        laypage.render({
            elem: 'page'
            ,count: total
            ,curr:${admins.pageNum}
            ,limit:${admins.pageSize}
            ,layout: ['count', 'prev', 'page', 'next','skip']
            ,jump: function(obj,first){
                if (!first){
                    //alert(JSON.stringify(obj));
                    window.location="admins?pageNumber="+obj.curr;
                }
            }
        });

    })



    function addAdmins(){
        var adminName=$("#adminName").val();
        var adminPhone=$("#adminPhone").val();
        var adminPassword=$("#adminPassword").val();
             if(adminName==null || adminName==""){
            alert("管理员姓名不能为空");
            return false;
        }
        if(adminPhone==null || adminPhone==""){
            alert("手机号不能为空");
            return false;
        }
        if(!(/^1[34578]\d{9}$/.test(adminPhone))){
            alert("手机号码格式有误，请重填");
            return false;
        }
        if(adminPassword==null || adminPassword==""){
            alert("密码不能为空");
            return false;
        }
        var reg = /[a-zA-Z0-9\W_]{6,}/;
        if(!reg.test(adminPassword)){
            alert("密码长度至少6位");
            return false;
        }
        $.post("AddAdmin","adminName="+adminName+"&adminPhone="+adminPhone+"&adminPassword="+adminPassword,function(data){
            if(data.result=="true"){
                alert("管理员添加成功");
                window.location.href="/admins";
            }
            else{
                alert("管理员添加失败");
            }
        },"json")
     //   window.location.href="AddAdmin?adminName="+adminName+"&adminPhone="+adminPhone+"&adminPassword="+adminPassword;
    }


    function bianji(aid) {
        $.post("adminById","aid="+aid,function(data){
            layer.open({
                type: 1,
                title:'编辑信息',
                area: ['420px', '240px'], //宽高
                content: $('#kuang')
            });
            $("#glyName").val(data.adminName);
            $("#glyPhone").val(data.adminPhone);
        },"json")
    }


    function updAdm(){
        var glyPhone=$("#glyPhone").val();
        var glyName=$("#glyName").val();
        var password=$("#password").val();
        $.post("updAdmin","glyPhone="+glyPhone+"&glyName="+glyName+"&password="+password,function(data){
            if(data.message=="true"){
                alert("管理员密码修改成功");
                window.location.href="admins";
            }
            else{
                alert("管理员密码修改失败");
            }
        },"json")

    }
    function delAdm(aid,dom) {
        if (confirm('确认删除吗?')) {
            $.post("delAdmins", {aid:aid}, function (data) {
                if (data.result == "true") {
                    $(dom).parent().parent().remove();
                    window.location.href = "/admins";
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