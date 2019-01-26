<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <link rel="stylesheet" href="../static/css/Xq.css">
    <script src="../static/js/jquery-1.9.1.min.js"></script>
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

                            <div class="layui-input-inline">
                                <select id="lawAlias" name="quiz">
                                    <option value="请选择" selected="selected">请选择</option>
                                    <#list lawsList as law>
                                        <option value="${law.lawAlias}">${law.lawAlias}&nbsp;${law.lawTitle}</option>
                                    </#list>
                                </select>
                            </div>
                <button type="submit" class="layui-btn-primary x-btn-sm" style="margin-left: 50px;" onclick="getCatalogs()">确定</button>

                <a href="addCatalogs"><button class="layui-btn layui-btn-normal" style="position: absolute;right: 0;bottom: 1px;">新增目录</button></a>
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
                <#list catalogs.list as catalog>
                    <tr>
                        <#if catalog.cLevel==0>
                            <td>+${catalog.catalogContent}</td>
                        <#elseif catalog.cLevel==1>
                            <td>-&nbsp;${catalog.catalogContent}</td>
                        <#elseif catalog.cLevel==2>
                            <td>--&nbsp;${catalog.catalogContent}</td>
                        </#if>

                        <td>${catalog.cIndex}</td>
                        <td>
                            <a href="#" class="caozuo">编辑</a>
                            <input type="hidden" value="${catalog.cid}">
                            <a href="" class="caozuo" onclick="delCatalog(this)">删除</a>
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
        //var lawAlias=${lawAlias}
        laypage.render({
            elem: 'page'
            ,count: ${catalogs.total}
            ,curr:${catalogs.pageNum}
            ,limit:${catalogs.pageSize}
            ,layout: ['count', 'prev', 'page', 'next', 'skip']
            ,jump: function(obj,first){
                if (!first){
                    //alert(JSON.stringify(obj));
                    window.location="catalogSearch?pageNumber="+obj.curr+"&lawAlias="+${lawAlias};
                }
            }
        });
    });

    function getCatalogs() {
        var lawAlias=$("#lawAlias").val();
        window.location.href="/catalogSearch?lawAlias="+lawAlias;
    }
    function delCatalog(dom) {
        var id=$(dom).prev().val();
        cid=id.replace(/,/g,'');
        // var cid=arr.join("-");

        if (confirm('确认删除吗?')) {
            $.post("delCatalogAction",{cid:cid},function (data) {
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