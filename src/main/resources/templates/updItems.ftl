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
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <link rel="stylesheet" href="../static/css/Xq.css">
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">法规管理 / 编辑条款</div>
        <div class="title">编辑条款</div>
    </header>
    <footer>
        <div>
            <form action="updItemsAction" method="post">
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
                    <td><input class="layui-input x-input" type="text" name="itemNum" value="${item.itemNum}"></td>
                </tr>
                <tr>
                    <td>*条款编号别名:</td>
                    <td><input class="layui-input x-input" type="text" name="itemAlias" value="${item.itemAlias}"></td>
                </tr>
                <tr>
                    <td>条款版本号:</td>
                    <td><input class="layui-input x-input" type="text" name="version" value="${item.version}"></td>
                </tr>
                <tr>
                    <td>*条款标题:</td>
                    <td><input class="layui-input x-input" type="text" name="itemTitle" value="${item.itemTitle}"></td>
                </tr>
                <tr>
                    <td>*条款内容:</td>
                    <td>
                        <#--<div id="froala-editor" style="width: 500px;">-->
                            <textarea id="froala-editor" name="itemContent" hidden>${item.itemContent}</textarea>
                        <#--</div>-->
                    </td>
                </tr>
                <tr>
                    <td>关键词:</td>
                    <td><input class="layui-input x-input" type="text" name="keywords" value="${item.keywords}"></td>
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
<script src="../static/js/zh_cn.js"></script>
<script src="../static/layui/layui.js"></script>
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
                alert("ajax");
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
</script>

</body>
</html>