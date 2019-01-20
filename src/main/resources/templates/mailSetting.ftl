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
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">设置 / 邮件SMTP设置</div>
        <div class="title">邮件SMTP设置</div>
    </header>
    <footer>
        <div>
            <table class="biaodan" style="border-collapse:separate; border-spacing:0px 50px;" >
                <tr>
                    <td style="width: 300px;">Email:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>服务器:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>用户名:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>一次连接服务器连续发送:</td>
                    <td><input placeholder="请输入数字" class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>登录类型:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline x-select">
                            <select name="quiz">
                                <option value="请选择">请选择</option>
                                <option value="LOGIN认证">LOGIN认证</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn-primary x-btn-sm">保存</button>
                    </td>
                </tr>
            </table>
        </div>
    </footer>
</div>
<script src="static/layui/lay/modules/jquery-3.3.1.min.js"></script>
<script src="static/layui/layui.js"></script>
<script>
    $(function() {
        $('div#froala-editor').froalaEditor({
            dragInline: true,
            toolbarButtons: ['bold', 'italic', 'underline', 'insertImage', 'insertLink', 'undo', 'redo'],
            height:300
        })
    });
    //Demo
    layui.use('form', function(){
        var form = layui.form;

    });
</script>

</body>
</html>