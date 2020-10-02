
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Form the query</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

</head>
<body>
<h1  class="text-center">列表<small>       查询</small></h1>
<div class="col-sm-10 " style="float: right;margin-right: 100px">

    <table class="table table-hover ">
        <!-- On cells (`td` or `th`) -->
        <tr>
            <td class="info">id</td>
            <td class="info">昵称</td>
            <td class="info">账号</td>
            <td class="info">密码</td>
            <td class="info">性别</td>
            <td class="info">生日</td>
        </tr>

        <c:forEach items="${users}"  var="user" varStatus="s">
            <tr>
                <td class="active">${user.user_id}</td>
                <td class="active">${user.user_name}</td>
                <td class="active">${user.user_nickname}</td>
                <td class="active">${user.user_pswd}</td>
                <td class="active">${user.user_sex}</td>
                <td class="active">${user.user_birthday}</td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>