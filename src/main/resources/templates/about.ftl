<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="../static/css/mui.min.css">
    <link rel="stylesheet" href="../static/css/Xq.css">
    <style>
      html,body {
        background-color: #efeff4;
      }
      .title{
        margin: 20px 15px 10px;
        color: #6d6d72;
        font-size: 15px;
      }

    </style>
  </head>
  <body>

    <div class="mui-content">
        <div class="mui-input-row mui-search" style="margin-top: 5px;padding-left: 5px;padding-right: 5px;">
          <input id="sousuo" type="search" class="mui-input-clear" placeholder="">
        </div>
        <!--默认显示内容-->
        <div id="neirong1" style="display: block;">
          <ul class="neirong" style="padding: 0px;">
            <li>
              <a class="kuai" href="detailLaws" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
            <li>
              <a class="kuai" href="" target="_parent">
                <h2>21</h2>
                <h6>民用</h6>
              </a>
            </li>
          </ul>
          <div style="height: 100px;padding: 5px;background-color: #fff;margin-top: 5px;">
            <div style="position: relative;height: 20px;">
              <a style="position: absolute;left: 0;font-size: 10px;" href="">收藏</a>
              <a style="position: absolute;right: 0;font-size: 10px;" href="">更多</a>
            </div>
            <div class="lie" style="position: relative;">
              <div><strong>第25.3条</strong></div>
              <div><span>ETOPS型号设计批准专用条款</span></div>
              <div style="position: absolute;right: 0;"><span class="mui-icon mui-icon-arrowright"></span></div>
            </div>
            <div class="lie" style="position: relative;">
              <div><strong>第25.25条</strong></div>
              <div><span>重量限制</span></div>
              <div style="position: absolute;right: 0;"><span class="mui-icon mui-icon-arrowright"></span></div>
            </div>
          </div>
        </div>
        <!--显示结束>点击搜索显示内容-->
      <div id="neirong2" style="display: none;background-color: #fff;width: 100%;height: 100%;">

      </div>
    </div>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="../static/js/mui.min.js"></script>
    <script>
      mui.init({
        swipeBack:true //启用右滑关闭功能
      });
      $(function () {
          $("#sousuo").focus(function () {
              $("#neirong1").css("display","none");
              $("#neirong2").css("display","block");
          });
          $("#sousuo").blur(function () {
              $("#neirong1").css("display","block");
              $("#neirong2").css("display","none");
          });
      });
    </script>
  </body>
</html>