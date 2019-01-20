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
        <div class="daohang">法规管理 / 新增条款</div>
        <div class="title">新增条款</div>
    </header>
    <footer>
        <div>
            <table class="biaodan" cellspacing="10px">
                <tr>
                    <td style="width: 300px;">*法规:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline x-select">
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
                    <td>*所在目录:</td>
                    <td class="layui-form">
                        <div class="layui-input-inline x-select">
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
                    <td>*条款编号:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>*条款编号别名:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>条款版本号:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>*条款标题:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>*条款内容:</td>
                    <td>
                        <div id="froala-editor" style="width: 500px;">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>关键词:</td>
                    <td><input class="layui-input x-input" type="text" value="起飞   速度"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;">保存</button>
                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;">复制条款</button>
                    </td>
                </tr>
            </table>
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
    layui.use('form',function () {
        var form = layui.form;
    })
</script>

</body>
</html>