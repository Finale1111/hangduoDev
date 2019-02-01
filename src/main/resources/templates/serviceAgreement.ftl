<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
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
                    <td><tr>
                <td>
                    <div class="fr-box fr-ltr fr-basic fr-top"><div class="fr-toolbar fr-ltr fr-desktop fr-top fr-basic fr-sticky-off" style="top: 0px; width: 369px;"><button id="bold-1" type="button" tabindex="-1" role="button" aria-pressed="false" title="粗体 (Ctrl+B)" class="fr-command fr-btn fr-btn-font_awesome" data-cmd="bold"><i class="fa fa-bold" aria-hidden="true"></i><span class="fr-sr-only">粗体</span></button><button id="italic-1" type="button" tabindex="-1" role="button" aria-pressed="false" title="斜体 (Ctrl+I)" class="fr-command fr-btn fr-btn-font_awesome" data-cmd="italic"><i class="fa fa-italic" aria-hidden="true"></i><span class="fr-sr-only">斜体</span></button><button id="underline-1" type="button" tabindex="-1" role="button" aria-pressed="false" class="fr-command fr-btn fr-btn-font_awesome" data-cmd="underline"><i class="fa fa-underline" aria-hidden="true"></i><span class="fr-sr-only">下划线</span></button><div class="fr-separator fr-vs" role="separator" aria-orientation="vertical"></div><button id="fontFamily-1" type="button" tabindex="-1" role="button" aria-controls="dropdown-menu-fontFamily-1" aria-expanded="false" aria-haspopup="true" title="字体" class="fr-command fr-btn fr-dropdown fr-btn-font_awesome fr-selection" data-cmd="fontFamily"><i class="fa fa-font" aria-hidden="true"></i><span class="fr-sr-only">字体</span></button><div id="dropdown-menu-fontFamily-1" class="fr-dropdown-menu" role="listbox" aria-labelledby="fontFamily-1" aria-hidden="true"><div class="fr-dropdown-wrapper" role="presentation"><div class="fr-dropdown-content" role="presentation"><ul class="fr-dropdown-list" role="presentation"><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontFamily" data-param1="Arial,Helvetica,sans-serif" style="font-family: Arial,Helvetica,sans-serif" title="Arial">Arial</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontFamily" data-param1="Georgia,serif" style="font-family: Georgia,serif" title="Georgia">Georgia</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontFamily" data-param1="Impact,Charcoal,sans-serif" style="font-family: Impact,Charcoal,sans-serif" title="Impact">Impact</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontFamily" data-param1="Tahoma,Geneva,sans-serif" style="font-family: Tahoma,Geneva,sans-serif" title="Tahoma">Tahoma</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontFamily" data-param1="Times New Roman,Times,serif,-webkit-standard" style="font-family: Times New Roman,Times,serif,-webkit-standard" title="Times New Roman">Times New Roman</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontFamily" data-param1="Verdana,Geneva,sans-serif" style="font-family: Verdana,Geneva,sans-serif" title="Verdana">Verdana</a></li></ul></div></div></div><button id="fontSize-1" type="button" tabindex="-1" role="button" aria-controls="dropdown-menu-fontSize-1" aria-expanded="false" aria-haspopup="true" title="字号" class="fr-command fr-btn fr-dropdown fr-btn-font_awesome fr-selection" data-cmd="fontSize"><i class="fa fa-text-height" aria-hidden="true"></i><span class="fr-sr-only">字号</span></button><div id="dropdown-menu-fontSize-1" class="fr-dropdown-menu" role="listbox" aria-labelledby="fontSize-1" aria-hidden="true"><div class="fr-dropdown-wrapper" role="presentation"><div class="fr-dropdown-content" role="presentation"><ul class="fr-dropdown-list" role="presentation"><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="8px" title="8">8</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="9px" title="9">9</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="10px" title="10">10</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="11px" title="11">11</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="12px" title="12">12</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="14px" title="14">14</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="18px" title="18">18</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="24px" title="24">24</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="30px" title="30">30</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="36px" title="36">36</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="48px" title="48">48</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="60px" title="60">60</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="72px" title="72">72</a></li><li role="presentation"><a class="fr-command" tabindex="-1" role="option" data-cmd="fontSize" data-param1="96px" title="96">96</a></li></ul></div></div></div><button id="insertLink-1" type="button" tabindex="-1" role="button" title="插入超链接 (Ctrl+K)" class="fr-command fr-btn fr-btn-font_awesome" data-cmd="insertLink" data-popup="true"><i class="fa fa-link" aria-hidden="true"></i><span class="fr-sr-only">插入超链接</span></button><button id="insertImage-1" type="button" tabindex="-1" role="button" title="插入图片 (Ctrl+P)" class="fr-command fr-btn fr-btn-font_awesome" data-cmd="insertImage" data-popup="true"><i class="fa fa-image" aria-hidden="true"></i><span class="fr-sr-only">插入图片</span></button><div class="fr-separator fr-vs" role="separator" aria-orientation="vertical"></div><button id="undo-1" type="button" tabindex="-1" role="button" aria-disabled="true" title="撤消 (Ctrl+Z)" class="fr-command fr-btn fr-btn-font_awesome fr-disabled" data-cmd="undo"><i class="fa fa-rotate-left" aria-hidden="true"></i><span class="fr-sr-only">撤消</span></button><button id="redo-1" type="button" tabindex="-1" role="button" aria-disabled="true" title="恢复 (Ctrl+Shift+Z)" class="fr-command fr-btn fr-btn-font_awesome fr-disabled" data-cmd="redo"><i class="fa fa-rotate-right" aria-hidden="true"></i><span class="fr-sr-only">恢复</span></button></div><div class="fr-sticky-dummy" style="height: 82px;"></div><textarea id="agreement" class="fr-wrapper show-placeholder" dir="ltr" style="height: 300px; width: 369px; overflow: auto;">${webSetting.agreement}</textarea>
                </td></tr><tr>

                <td>
                    <button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;" type="submit" onclick="toUpdagreement(this,${webSetting.sid})">保存</button>
                </td>
            </tr>
                        <#--<textarea id="agreement">${webSetting.agreement}</textarea>-->

                    <#--</td>-->
                <#--</tr>-->
                <#--<tr>-->
                    <#--<td colspan="2" style="text-align: center;">-->
                        <#--<button class="layui-btn layui-btn-primary x-btn" style="margin-top: 20px;" onclick="toUpdagreement(this,${webSetting.sid})">保存</button>-->
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
    // $(function() {
    //     $('#froala-editor').froalaEditor({
    //         language: 'zh_cn',
    //         dragInline: true,
    //         toolbarButtons: ['bold', 'italic', 'underline', 'insertImage', 'undo', 'redo'],
    //         height:300,
    //         placeholderText: '请输入内容',
    //     });
    // });
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