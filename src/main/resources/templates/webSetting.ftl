<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <link rel="stylesheet" href="static/css/Xq.css">
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">设置 / 网站设置</div>
        <div class="title">网站设置</div>
    </header>
    <footer>
        <div>
            <table class="biaodan" cellspacing="10px">
                <tr>
                    <td>网站状态:</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <input type="radio" name="a" value="0" title="开启" checked>
                            <input type="radio" name="a" value="1" title="关闭">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 300px;">网站标题:</td>
                    <td><input placeholder="不能超过100个字" class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>网站域名:</td>
                    <td><input placeholder="不能超过100个字" class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>网站logo:</td>
                    <td style="position: relative;width: 400px;">
                        <div class="layui-upload-drag" id="shangchuan">
                            <i class="layui-icon"></i>
                            <p>点击上传，或将文件拖拽到此处</p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>公司邮箱:</td>
                    <td><input placeholder="不能超过100个字" class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>站点语言:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline">
                            <select name="quiz">
                                <option value="请选择">请选择</option>
                                <option value="CCAR-21-R4 民用航空产品和零部件合格审定规定">民用航空产品和零部件合格审定规定</option>
                                <option value="CCAR-23-R3正常类、实用类、特技类和通勤类飞机适航标准">CCAR-23-R3正常类、实用类、特技类和通勤类飞机适航标准</option>
                                <option value="CCAR-25-R4运输类飞机适航标准">CCAR-25-R4运输类飞机适航标准</option>
                                <option value="CCAR-26运输类飞机的持续适航和安全改进规定">CCAR-26运输类飞机的持续适航和安全改进规定</option>
                                <option value="CCAR-27-R1正常类旋翼航空器适航规定">CCAR-27-R1正常类旋翼航空器适航规定</option>
                                <option value="CCAR-29-R1运输类旋翼航空器适航规定">CCAR-29-R1运输类旋翼航空器适航规定</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;">保存</button>
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
</script>

</body>
</html>