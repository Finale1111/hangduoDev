<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title>Result</title>
</head>
<body>

<h1 align="center">${sname}的信息</h1>
<h1 align="center">${age}岁</h1>
<h1 align="center">${weight}公斤</h1>
<h1 align="center">
    <#if gender=0>
            女
    <#elseif gender=1>
            男
    <#else>
            未知
    </#if>
</h1>

<h1 align="center">同桌的姓名：${tongzhuo.sname}</h1>
<h1 align="center">同桌的年龄：${tongzhuo.age}</h1>


<#list pengyoumen as py>
    <h3 align="center">朋友：${py.fname}</h3>
    <h3 align="center">爱好：${py.hobby}</h3>
    <br>
</#list>


</body>
</html>
