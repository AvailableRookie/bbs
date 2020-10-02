
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head>


        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>无标题文档</title>


        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
        <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
        <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
        <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>


        <link href="${pageContext.request.contextPath }/resources/css/zzcg.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>



        <script type="text/javascript">
            function show(idname)
            {
                document.getElementById(idname).style.display='block'
            }
            function lost(idname)
            {
                document.getElementById(idname).style.display='none'
            }
        </script>

    </head>

<body>


<div class="header">
    <h2>北院独亭</h2>
    <h6>BeiYuanDuTing</h6>
</div>
<div class="content">
    <p>恭喜你!<span>注册成功</span></p>
    <hr />
    <h5>欢迎您成为北院独亭用户，请您去邮箱激活成功后，点击登录</h5>
    <a href="#" onclick="show('light');show('fade')"><input id="" name="" class="submit_dl" type="submit" value="登录"/></a>
</div>


<div id="light" class="white_content">
    <p class="cuo"><a href = "#" onclick = "lost('light');lost('fade')"><img src="image/cuo.png"/></a></p>
    <h2>欢迎登录</h2>
    <form action="#" method="post">
        <dl class="box">
            <dd><input id="loginName" name="loginName" type="text" placeholder="用户名"/></dd>
            <dd><input id="loginPassword" name="loginPassword" type="password" placeholder="密码"/></dd>
        </dl>
        <dl class="zz">
            <dt><input id="self" name="self" type="checkbox"/></dt>
            <dd>下次自动登录</dd>
        </dl>
        <input id="submit" name="submit" class="but" type="submit" value="登录"/>
    </form>
    <span class="lastone"><a href="///C:/论坛入口/忘记密码.html">忘记密码?</a> <a href="///C:/论坛入口/登录注册.html">立即注册</a></span>
</div>
<div id="fade" class="black_overlay"></div>
</body>
</html>

