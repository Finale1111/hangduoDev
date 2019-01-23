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
    <style>
        #pic {
            width: 100px;
            height: 100px;
            margin: 20px auto;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">法规管理 / 编辑法规</div>
        <div class="title">编辑法规</div>
    </header>
    <footer>
        <div>
            <form action="/updLawAction" method="post">
            <table class="biaodan" cellspacing="10px">
                <tr>
                    <td style="width: 300px;">*法规部号:</td>
                    <td><input class="layui-input x-input" type="text" name="lawNum" value="${lawInfo.lawNum}"></td>
                </tr>
                <tr style="display:none;">
                    <td>法规号别名:</td>
                    <td><input class="layui-input x-input" type="text" name="lawAlias" value="${lawInfo.lawAlias}"></td>
                </tr>
                <tr>
                    <td>法规版本号:</td>
                    <td><input class="layui-input x-input" type="text" name="lawVersion" value="${lawInfo.lawVersion}"></td>
                </tr>
                <tr>
                    <td>*法规名称:</td>
                    <td><input class="layui-input x-input" type="text" name="lawTitle" value="${lawInfo.lawTitle}"></td>
                </tr>
                <tr>
                    <td>*是否显示:</td>
                    <td class="layui-form">
                        <div class="layui-input-block" style="margin-left: 0px">
                            <#if lawInfo.showStatus==1>
                                <input type="radio" name="showStatus" value="0" title="显示" checked>
                                <input type="radio" name="showStatus" value="1" title="不显示">
                            <#elseif lawInfo.showStatus==0>
                                <input type="radio" name="showStatus" value="0" title="显示" >
                                <input type="radio" name="showStatus" value="1" title="不显示" checked>
                            </#if>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>*首页法规图标:</td>
                    <td style="position: relative;width: 400px;">
                        <img style="width: 200px;height: 170px;border: 1px dashed #000;position: relative;" alt="asdfas" id="pic" src="" >
                        <input style="display: none;" id="upload" type="file" name="tu"/>
                        <div style="position: absolute;left:300px;bottom: 0;">
                            <p>图片格式支持：jpg/png，</p>

                            <p>图片尺寸：90*90px</p>

                            <p>图片大小：不超过50K</p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>法定PDF文件名称:</td>
                    <td><input class="layui-input x-input" type="text" name="lawPDFTitle" value="${lawInfo.lawPDFTitle}"></td>
                </tr>
                <tr>
                    <td>法规PDF文件下载链接:</td>
                    <td><input class="layui-input x-input" type="text" name="lawDownloadLink" value="${lawInfo.lawDownloadLink}"></td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">*法规版本说明:</td>
                    <td>
                    <div id="froala-editor" style="width: 500px;">
                        <textarea id="froala-editor" name="lawDescription" hidden>${lawInfo.lawDescription}</textarea>
                    </div>


                        <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;" type="submit">保存</button>
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
<script type="text/javascript" src="static/js/zh_cn.js" ></script>
<script src="static/layui/layui.js"></script>
<script>
    $(function() {
        $('div#froala-editor').froalaEditor({
            language: 'zh_cn',
            dragInline: true,
            toolbarButtons: ['bold', 'italic', 'underline', 'insertImage', 'undo', 'redo'],
            height:300,
            placeholderText: '请输入内容',

        })
    });
    layui.use('form', function(){
        var form = layui.form;

    });

</script>
<script>
    $(function() {
        $("#pic").click(function () {
            $("#upload").click();  //点击图片的同时,相当于点击了file框
            $("#upload").on("change",function(){
                /*	var objUrl = getObjectURL(this.files[0]) ; //获取图片的路径，该路径不是图片在本地的路径
                    if (objUrl) {
                        $("#pic").attr("src", objUrl) ; //将图片路径存入src中，显示出图片
                    }*/
                $("#pic").attr("src", window.URL.createObjectURL(this.files[0])) ;
            });
        });
    });
</script>
</body>
</html>