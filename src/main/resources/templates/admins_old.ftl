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
           <div class="textMess"> <#if message??>
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
                <#list admins.list as admins>
                <tr>
                    <td>${admins.adminPhone}</td>
                    <td>${admins.adminName}</td>
                    <td>${admins.regDate}</td>
                    <td>
                        <a href="#" class="caozuo">编辑</a>
                        <a href="javascript:void(0)" class="caozuo" onclick="delAdm(${admins.aid},this)">删除</a>
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
    layui.use(['laypage','layer'],function () {
        var laypage = layui.laypage;
        var total=${admins.total};
        laypage.render({
            elem: 'page'
            ,count: total
            ,curr:${admins.pageNum}
            ,limit:${admins.pageSize}
            ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
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
        window.location.href="AddAdmin?adminName="+adminName+"&adminPhone="+adminPhone+"&adminPassword="+adminPassword;



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