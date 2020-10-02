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


    <link href="${pageContext.request.contextPath }/resources/css/dlzc.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>

</head>

<body>


<div class="header">
    <h2>北院独亭</h2>
    <h6>BeiYuanDuTing</h6>
</div>
<form action="${pageContext.request.contextPath }/register/registerUser" id="registerFrom" method="post">
    <div class="content">
        <div class="top">
            <h3>欢迎注册</h3>
            <P>已有账号？<a href="#" onclick="show('light');show('fade')">登录</a></P>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>邮件地址：</span>
            <label for="userEmail"></label><input id="userEmail" name="user_email" type="text" class="input1"
                                                  placeholder="建议使用QQ邮箱"/>

        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>用户名：</span>
            <label for="userName"></label><input id="userName" name="user_name" class="input1" type="text"
                                                 placeholder="2-12位英文字母"/>
            <span class="two">
            一经注册，不可更改
         </span>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>昵称：</span>
            <label for="userNickname"></label><input id="userNickname" name="user_nickname" class="input1" type="text"
                                                     placeholder="例如”甜心“"/>
            <span class="two">
            注册后可以随时更改
         </span>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>密码：</span>
            <label for="userPassword"></label><input id="userPassword" name="user_pswd" class="input1"
                                                     type="password"/>
            <span class="two">
            6-16位，包含不止一种字符
         </span>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>重复密码：</span>
            <label for="userRePassword"></label><input id="userRePassword" name="user_rePassword" type="password"
                                                       class="input1"/>
            <span class="two">请再次输入密码</span>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>性别：</span>
            <dl class="sex">
                <dt><label>
                    <input id="man" name="user_sex" class="input3"   value="1" type="radio"/>
                </label></dt>
                <dd>男</dd>
                <dt><label>
                    <input id="lady" name="user_sex" class="input3"  value="0" type="radio"/>
                </label></dt>
                <dd>女</dd>
                <dt><label>
                    <input id="nosex" name="user_sex" class="input3"  value="2" type="radio"/>
                </label></dt>
                <dd>不显示性别</dd>
            </dl>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>生日：</span>
            <dl>
                <dt><label>
                    <input id="year" name="user_birthday" type="text" class="input4" />
                </label></dt>
                <dd>年</dd>
                <dt><label>
                    <input id="month" name="birthday1" type="text" class="input4" />
                </label></dt>
                <dd>月</dd>
                <dt><label>
                    <input id="day" name="birthday2" type="text" class="input4" />
                </label></dt>
                <dd>日</dd>
            </dl>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>手机号：</span>
            <label for="userPhone"></label><input id="userPhone" name="user_phone" type="text" class="input1"/>
            <span class="two">
             手机号绑定
         </span>
        </div>

        <div class="row">
            <span class="one"><span class="star">*</span>验证码：</span>
            <label for="authCode"></label><input id="authCode" name="authCode" type="text" class="input1"/>
            <span class="two">
            <img type="image" id="image" src="${pageContext.request.contextPath }/auth/code"/><a id="changeImg">&nbsp;看不清？换一张</a>
         </span>

        </div>

        <dl class="last">
            <dt><label for="agree"></label><input id="agree" name="agree" class="input2" type="checkbox"/></dt>
            <dd>我已阅读并同意遵守<a href="#">”BBS总纲“</a>，以及<a href="#">”各项具体站规细则“</a></dd>

        </dl>
        <input id="submit" name="submit" class="submit1" type="submit" value="立即注册"/>
        <input id="return" name="back" class="submit2" type="submit" onclick="lis()"  value="返回"/>
        <a class="btn btn-default" href="${pageContext.request.contextPath }/list/listUser" role="button">Link</a>
    </div>
</form>

<div class="footer">
    <p>©2020河北北方学院BBS</p>
</div>

<div id="light" class="white_content">
    <p class="cuo"><a href="#" onclick="lost('light');lost('fade')"><img
            src="${pageContext.request.contextPath }/resources/images/cuo.png"/></a></p>
    <h2>欢迎登录</h2>
    <form action="#" method="post">
        <dl class="box">
            <dd><label for="loginName"></label><input id="loginName" name="" type="text" placeholder="用户名/邮箱"/></dd>
            <dd><label for="loginPassword"></label><input id="loginPassword" name="" type="password" placeholder="密码"/>
            </dd>
        </dl>
        <dl class="zz">
            <dt><label for=""></label><input id="" name="" type="checkbox"/></dt>
            <dd>下次自动登录</dd>
        </dl>
        <input id="loginSubmit" name="loginSubmit" class="but" type="submit" value="登录"/>
    </form>
    <span class="lastone"><a href="///C:/论坛入口/忘记密码.html">忘记密码?</a> <a href="///C:/论坛入口/登录注册.html">立即注册</a></span>
</div>
<div id="fade" class="black_overlay"></div>
</body>
<script type="text/javascript">
    function show(idname) {
        document.getElementById(idname).style.display = 'block'
    }

    function lost(idname) {
        document.getElementById(idname).style.display = 'none'
    }


    //校验用户名
    $("#userName").blur(function () {
        checkUserName();
    });

    function checkUserName() {
        var userName = $("#userName").val();
        var flag =!(userName == null || userName == "" || userName == undefined);
        if (flag) {
            $("#userName").css("border", "");
        } else {
            $("#userName").css("border", "1px solid red");
        }

        return flag;

    }

    //校验邮箱
    $("#userEmail").blur(function () {
        checkUserEmail();
    });

    function checkUserEmail() {
        var email = $("#userEmail").val();
        var reg_email = /^\w{1,18}@\w+\.\w+$/;
        var flag = reg_email.test(email);
        if (flag) {
            $("#userEmail").css("border", "");
        } else {
            $("#userEmail").css("border", "1px solid red");
        }
        return flag;

    }

    //校验昵称
    $("#userNickname").blur(function () {
        checkUserNickname();
    });

    function checkUserNickname() {
        var userNickname = $("#userNickname").val();
        var flag = !(userNickname == null || userNickname == "" || userNickname == undefined);
        if (flag) {
            $("#userNickname").css("border", "");
        } else {
            $("#userNickname").css("border", "1px solid red");
        }
        return  flag;
    }

    //校验密码
    $("#userPassword").blur(function () {
        checkUserPassword();
        checkUserRePassword();
    });

    function checkUserPassword() {
        var password = $("#userPassword").val();
        var reg_password = /^\w{6,20}$/;
        var flag = reg_password.test(password);
        if (flag) {
            $("#userPassword").css("border", "");
        } else {
            $("#userPassword").css("border", "1px solid red");
        }
        return flag;
    }

    //校验重复密码
    $("#userRePassword").blur(function () {
        checkUserRePassword();
    });

    function checkUserRePassword() {
        var r_password = $("#userRePassword").val();
        var password = $("#userPassword").val();
        var flag = r_password === password;
        if (flag) {
            $("#userRePassword").css("border", "");
        } else {
            $("#userRePassword").css("border", "1px solid red");
        }

        return flag;
    }

    //校验性别
    $(".input3").blur(function () {
        checkUserSex();
    });

    function checkUserSex() {
        var userSex = $(".input3").val();
        var flag = !(userSex == null || userSex == "" || userSex == undefined);
        if (flag) {
            $("#userNickname").css("border", "");
        } else {
            $("#userNickname").css("border", "1px solid red");
        }
        return flag;
    }


    //校验出生日期
    $(".input4").blur(function () {
        checkUserBirthday();
    });

    function checkUserBirthday() {
        var year = $("#year").val();
        var reg_year = /^\d{4}$/;
        var flag1 = reg_year.test(year);
        if (flag1) {
            $("#year").css("border", "");
        } else {
            $("#year").css("border", "1px solid red");
        }

        var month = $("#month").val();
        var reg_month = /^\d{1,2}$/;
        var flag2 = reg_month.test(month);
        if (flag2) {
            $("#month").css("border", "");
        } else {
            $("#month").css("border", "1px solid red");
        }

        var day = $("#day").val();
        var reg_day = /^\d{1,2}$/;
        var flag3 = reg_day.test(day);
        if (flag3) {
            $("#day").css("border", "");
        } else {
            $("#day").css("border", "1px solid red");
        }

        return flag1 && flag2 && flag3;
    }

    //校验手机号
    $("#userPhone").blur(function () {
        checkUserPhone();
    });

    function checkUserPhone() {
        var phone = $("#userPhone").val();
        var reg_phone = /^\d{11}$/;
        var flag = reg_phone.test(phone);
        if (flag) {
            $("#userPhone").css("border", "");
        } else {
            $("#userPhone").css("border", "1px solid red");
        }
        return flag;
    }

    //得到性别单选值
    $("#lady").click(function lady(){
        $(".input3").attr("value","0");
    });
    $("#nosex").click(function nosex(){
        $(".input3").attr("value","2");
    });

    function birthday() {
        var year = $("#year").val();
        var month = $("#month").val();
        var day = $("#day").val();
        var birthday = year+"-"+month+"-"+day;
        //设置birthday为一个字符串
        $("#year").val(function (i,oldval) {
                return birthday;
        });
    }

    var result = "${result}";
    if(result !== ""){
        alert(result);
    }

    $("#registerFrom").submit(function () {
       var flag = checkUserRePassword() && checkUserName() && checkUserPassword() && checkUserEmail() && checkUserPhone() && checkUserSex() && checkUserBirthday() && checkUserNickname();
        if (flag) {
            // birthday();
            //如果校验通过，发送ajax  提提交表单数据
            $.post(
                "${pageContext.request.contextPath }/register/registerUser",
                $(this).serialize(),
                function (data) {
                    alert(data);
                }
            );

            //此处注意如果用异步提交数据的时候要，通过返回false阻止表单提交
            // return false;
        } else {
            alert(123);
            return false;
        }
        //如果这个submit没有返回值，或者返回值为true 则表单提交，如果返回为false 则表单不提交
        //submit方法的表单type 和name必须为submit
    });

    function lis()
    {
        alert("Hello world!");
    }

    //验证码切换
   $("#changeImg").click(function () {
       $("#image").attr('src',"${pageContext.request.contextPath}/auth/code?d="+Math.random());
   });



</script>

</html>
