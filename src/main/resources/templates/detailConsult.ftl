<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <title></title>

</head>
<body>
// 点击更多到详情页面(时间 )
//内容
<table>
    <tr>
        <p>咨询问题${consult.consultTime}</p>
        <td>${consult.consultText}</td>
    </tr>
</table>


</body>
</html>


