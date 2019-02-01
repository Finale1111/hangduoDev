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
        <div class="daohang">设置 /服务协议</div>
        <div class="title">服务协议</div>
    </header>
    <footer>
        <div>
            <table class="biaodan" cellspacing="10px">

                <tr>
                <#-- <td>公司介绍:</td>
                 <td &lt;#&ndash;style="position: relative;width: 400px;"&ndash;&gt;>
                    <textarea id="cpContent">
                     </div>
                 </td>-->
                    <td>
                        <textarea id="agreement">${webSetting.agreement}</textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;" onclick="toUpdagreement(this,${webSetting.sid})">保存</button>
                    </td>
                </tr>
            </table>
        </div>
    </footer>
</div>
<script src="static/layui/lay/modules/jquery-3.3.1.min.js"></script>
<script src="static/layui/layui.js"></script>
<script src="static/layui/layui.all.js"></script>
<script>
    $(function() {
        $('div#froala-editor').froalaEditor({
            dragInline: true,
            toolbarButtons: ['bold', 'italic', 'underline', 'insertImage', 'insertLink', 'undo', 'redo'],
            height:300
        })
    });
    layui.use('form', function(){
        var form = layui.form;

    });
    layui.use('upload',function () {
        var $ = layui.jquery
                ,upload = layui.upload;
        upload.render({
            elem: '#shangchuan'
            ,url: '/upload/'
            ,done: function(res){
                console.log(res)
            }
        });
    })

    function toUpdagreement(dom,sid){
        var agreement=$("#agreement").val();
        $.post("toUpdWebagreement","agreement="+agreement,function(data){
            if(data.message=="true"){
                alert("保存成功");
                window.location.href="laws";
            }
            else{
                alert("保存失败");
            }
        },"json")
    }
</script>

</body>
</html>