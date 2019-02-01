<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Include external CSS. -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">

    <!-- Include Editor style. -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/css/froala_style.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/Xq.css">
    <script src="static/js/jquery-1.9.1.min.js"></script>
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">法规管理 / 新增条款</div>
        <div class="title">新增条款</div>
    </header>
    <footer>
        <div>
            <form action="/addItemsAction" method="post">
            <table class="biaodan" cellspacing="10px">
                <tr>
                    <td style="width: 300px;">*法规:</td>
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
                    <td>*所在目录:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline x-select">
                            <select name="cid" id="fulei" lay-filter="fuji">
                                <option value="0">请选择</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>*条款编号:</td>
                    <td><input class="layui-input x-input" type="text" name="itemNum" id="itemNum"></td>
                </tr>
                <tr>
                    <td>*条款编号别名:</td>
                    <td><input class="layui-input x-input" type="text" name="itemAlias" id="itemAlias"></td>
                </tr>
                <tr>
                    <td>条款版本号:</td>
                    <td><input class="layui-input x-input" type="text" name="version" id="version"></td>
                </tr>
                <tr>
                    <td>*条款标题:</td>
                    <td><input class="layui-input x-input" type="text" name="itemTitle" id="itemTitle"></td>
                </tr>
                <tr>
                    <td>*条款内容:</td>
                    <td>
                        <#--<div id="froala-editor" style="width: 500px;">-->
                            <textarea id="froala-editor" name="itemContent" cols="50" rows="20"></textarea>
                        <#--</div>-->
                    </td>
                </tr>
                <tr>
                    <td>关键词:</td>
                    <td><input class="layui-input x-input" type="text" name="keywords" id="keywords"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;" type="submit">保存</button>
                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;">复制条款</button>
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </footer>
</div>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/js/froala_editor.pkgd.min.js"></script>
<script src="static/js/zh_cn.js"></script>
<script src="static/layui/layui.js"></script>
<script>
    $(function() {
        $('div#froala-editor').froalaEditor({
            language: 'zh_cn',
            dragInline: true,
            toolbarButtons: ['bold', 'italic', 'underline', 'insertImage', 'insertLink', 'undo', 'redo'],
            height:300
        })
    });
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
        var ajaxLaws=$("#ajaxLaws").val();
        var fulei=$("#fulei").val();
        var itemNum=$("#itemNum").val();
        var itemAlias=$("#itemAlias").val();
        var version=$("#version").val();
        var itemTitle=$("#itemTitle").val();
        var itemContent =$("#froala-editor").val();
        var keywords=$("#keywords").val();
        if(ajaxLaws=="请选择"){
            alert("请选择法规");
            return false;
        }
        if(fulei=="请选择"){
            alert("请选择所在目录");
            return false;
        }
        if(itemNum==null || itemNum==""){
            alert("条款编号不能为空");
            return false;
        }
        var re = /^\d+(?=\.{0,1}\d+$|$)/
        if (!re.test(itemNum)) {
            alert("条款编号内仅限输入数字和小数点");
            return false;
        }

            if(itemAlias==null || itemAlias==""){
            alert("条款编号别名不能为空");
            return false;
        }
        if(version==null || version==""){
            alert("条款版本号不能为空");
            return false;
        }
        if(itemTitle==null || itemTitle==""){
            alert("条款标题不能为空");
            return false;
        }
        if(itemContent==null || itemContent==""){
            alert("条款内容不能为空");
            return false;
        }
        if(keywords==null || keywords==""){
            alert("关键字不能为空");
            return false;
        }
    })
</script>

</body>
</html>