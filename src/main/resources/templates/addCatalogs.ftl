<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/Xq.css">
    <script src="static/js/jquery-1.9.1.min.js"></script>

</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">法规管理 / 新增目录</div>
        <div class="title">新增目录</div>
    </header>
    <footer>

        <div>
            <form method="post" action="/doCatalogAdd">
            <table class="biaodan" style="border-collapse:separate; border-spacing:0px 50px;" >
                <tr>
                    <td style="width: 300px;">*目录名称:</td>
                    <td><input class="layui-input x-input" type="text" name="catalogContent" id="catalogContent"></td>
                </tr>
                <tr>
                    <td>统计目录排序:</td>
                    <td><input class="layui-input x-input" type="text" name="cIndex" id="cIndex"></td>
                </tr>
                <tr>
                    <td>选择所属法规:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline x-select">
                            <select name="lawAlias" lay-filter="tests" id="ajaxLaws">
                                <option value="请选择">请选择</option>
                                <#list lawsList as law>
                                    <option value="${law.lawAlias}">${law.lawAlias}&nbsp;${law.lawTitle}</option>
                            </#list>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>*选择父级目录:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline x-select">
                            <select name="supCid"  id="fulei" lay-filter="fuji">
                                <option value="1113">请选择</option>
                                <option value="0">顶级目录</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn-primary x-btn-sm" type="submit">新增目录</button>
                    </td>
                </tr>
            </table>
        </form>
        </div>

    </footer>
</div>
<script src="static/layui/lay/modules/jquery-3.3.1.min.js"></script>
<script src="static/layui/layui.js"></script>
<script src="static/layui/layui.all.js"></script>
<script src="static/layui/layui.js"></script>
<script>
    //Demo
    layui.use('form', function() {
        var form = layui.form;
        form.on('select(tests)',function(data){
           var lawAlias=$("select").val();
           console.log(data)
            $.post("qqdgetCatalogs",{"lawAlias":lawAlias},function(returnData,status){

                if ("success"==status) {
                    var result = "<option value='0'>--请选择--</option>";
                    for(var i = 0;i<returnData.length;i++){
                        result += "<option value='"+returnData[i].cid+"'>"+
                                returnData[i].catalogContent+"</option>";
                    }
                    $("#fulei").html(result);
                    form.render('select');
                }
            },"json");

        })
    })


    $("form").submit(function(){
        var catalogContent=$("#catalogContent").val();
        var cIndex=$("#cIndex").val();
        var lawAlias=$("#ajaxLaws").val();
        var fulei=$("#fulei").val();

        if(catalogContent==null ||catalogContent==""){
            alert("目录名称不能为空");
            return false;
        }

        if(cIndex==null || cIndex==""){
            alert("统计目录排序不能为空");
            return false;
        }

        if(lawAlias=="请选择"){
        alert("请选择所属法规");
        return false;
        }

        
        if(fulei=="请选择"){
            alert("请选择父级目录");
            return false;
        }

    })
</script>

</body>
</html>


