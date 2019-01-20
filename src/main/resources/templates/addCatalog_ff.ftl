<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>
    <link rel="stylesheet" href="../static/layui/css/layui.css">
    <link rel="stylesheet" href="../static/css/Xq.css">
</head>
<body>
<div class="overall">
    <header>
        <div class="daohang">法规管理 / 新增目录</div>
        <div class="title">新增目录</div>
    </header>
    <footer>
        <div>
            <table class="biaodan" style="border-collapse:separate; border-spacing:0px 50px;" >
                <tr>
                    <td style="width: 300px;">*目录名称:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>统计目录排序:</td>
                    <td><input class="layui-input x-input" type="text"></td>
                </tr>
                <tr>
                    <td>选择所属法规:</td>
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
                    <td>*选择父级目录:</td>
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
                    <td colspan="2" style="text-align: center;">
                        <button class="layui-btn-primary x-btn-sm">新增目录</button>
                    </td>
                </tr>
            </table>
        </div>
    </footer>
</div>
<script src="../static/layui/lay/modules/jquery-3.3.1.min.js"></script>
<script src="../static/layui/layui.js"></script>
<script src="../static/layui/layui.all.js"></script>
<script src="../static/layui/layui.js"></script>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

    });
</script>

</body>
</html>


