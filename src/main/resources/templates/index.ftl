<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

<head>
  <meta charset="utf-8">
  <title>LayUi</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="static/layui/css/layui.css">


  <style>
    dd{
      cursor: pointer;
    }
    html{overflow:hidden;}
  </style>

  

</head>
<body class="layui-layout-body">

<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">航多知识管理系统</div>
    <!-- 头部区域 -->

    <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
      <li class="layui-nav-item" lay-unselect>
        <a href="javascript:void(0)">账户设置</a>
      </li>
      <li class="layui-nav-item" lay-unselect>
        <a href="javascript:void(0)">退出登录</a>
      </li>
      <li class="layui-nav-item" lay-unselect>
        <div>
          <input type="hidden" name="color" value="" id="test-all-input">
          <div id="test-all"></div>
        </div>
      </li>
    </ul>
  </div>

  <!-- 侧边菜单 -->
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
        <li data-name="home" class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;" lay-tips="法规管理" lay-direction="2">
            <i class="layui-icon layui-icon-home"></i>
            <cite>法规管理</cite>
          </a>
          <dl class="layui-nav-child">
            <dd data-name="console" class="layui-this">
              <a href="/laws" target="myFrame">法规列表</a>
            </dd> 
            <dd data-name="console">
              <a href="/addLaws" target="myFrame">新增法规</a>
            </dd>
            <dd data-name="console">
              <a href="/catalogSearch" target="myFrame">法规目录管理</a>
            </dd>
            <dd data-name="console">
              <a href="/addCatalogs" target="myFrame">新增目录</a>
            </dd>
            <dd data-name="console">
              <a href="/items" target="myFrame">条款列表</a>
            </dd>
            <dd data-name="console">
              <a href="/addItems" target="myFrame">新增条款</a>
            </dd>
          </dl>
        </li>
        <li data-name="component" class="layui-nav-item">
          <a href="javascript:;" lay-tips="用户管理" lay-direction="2">
            <i class="layui-icon layui-icon-username"></i>
            <cite>用户管理</cite>
          </a>
          <dl class="layui-nav-child">
            <dd data-name="console">
              <a href="/users" target="myFrame">用户列表</a>
            </dd>
          </dl>
        </li>
        <li data-name="component" class="layui-nav-item">
          <a href="javascript:;" lay-tips="咨询管理" lay-direction="2">
            <i class="layui-icon layui-icon-component"></i>
            <cite>咨询管理</cite>
          </a>
          <dl class="layui-nav-child">
            <dd data-name="console">
              <a href="/questions" target="myFrame">咨询列表</a>
            </dd>
          </dl>
        </li>
        <li data-name="home" class="layui-nav-item">
          <a href="javascript:;" lay-tips="设置" lay-direction="2">
            <i class="layui-icon layui-icon-set"></i>
            <cite>设置</cite>
          </a>
          <dl class="layui-nav-child">
            <dd data-name="console">
              <a href="/webSetting" target="myFrame">网站设置</a>
            </dd>
              <dd data-name="console">
                  <a href="/getWebSetting" target="myFrame">公司介绍</a>
              </dd>
              <dd data-name="console">
                  <a href="/getWebSettingagreement" target="myFrame">服务协议</a>
              </dd>
            <dd data-name="console">
              <a href="/mailSetting" target="myFrame">邮件SMTP设置</a>
            </dd>
            <dd data-name="console">
              <a href="/phoneMsg" target="myFrame">短信设置</a>
            </dd>
            <dd data-name="console">
              <a href="/admins" target="myFrame">管理员管理</a>
            </dd>
            <dd data-name="console">
              <a href="/messages" target="myFrame">意见反馈列表</a>
            </dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>


  <div class="layui-body" style="overflow: hidden;">
      <iframe name="myFrame" src="/laws" frameborder="0" style="width: 100%;height: 100%;">

      </iframe>
  </div>
</div>


<script src="static/layui/lay/modules/jquery-3.3.1.min.js"></script>
<script src="static/layui/layui.js"></script>
<script src="static/layui/layui.all.js"></script>


<script>
    layui.use('colorpicker',function () {
        var $ = layui.$
            ,colorpicker = layui.colorpicker;
        //开启全功能
        colorpicker.render({
            elem: '#test-all'
            ,color: 'rgba(35, 38, 46)'
            ,format: 'rgb'
            ,predefine: true
            ,alpha: true
            ,done: function(color){
                $('#test-all-input').val(color); //向隐藏域赋值
                layer.tips('');
                color || this.change(color); //清空时执行 change
            }
            ,change: function(color){
                //给当前页面头部和左侧设置主题色
                $('.layui-header,.layui-side-scroll,.layui-nav').css('background-color', color);
            }
        });

    })
</script>
</body>
</html>


