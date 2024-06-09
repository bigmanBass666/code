<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 2024-04-10
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <script>
        /*
        完成点击图片或文字就会刷新验证码功能

        1.给图片和文字添加超链接
        2.为图片和文字绑定单击事件
        3.重新设置src的值

         */
        window.onload = function () {
            //1.获取图片对象
            var img = document.getElementById("checkCode");
            //2.绑定单击事件
            img.onclick = function () {
                //加时间戳
                var date = new Date().getTime();
                console.log(date)
                //更换src资源路径
                img.src = "VerificationCodeServlet?"+date;
            }
        }
    </script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            background: linear-gradient(to right, #6af4ff, #ffffff);
        }

        .Box {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 550px;
            height: 330px;
            display: flex;
        }


        form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -60%);
            width: 80%;
            text-align: center;
        }

        h3 {
            font-size: 24px;
            margin-bottom: 20px;
            letter-spacing: 5px;
        }

        input {
            width: 100%;
            height: 38px;
            border: 1px solid #000000;
            background-color: transparent;
            padding-left: 10px;
            font-size: 12px;
            color: #000000;
            margin-bottom: 15px;
            outline: none;
        }

        .vcode{
            width: 100%;
            height: 32px;
            border: 1px solid #000000;
            background-color: transparent;
            font-size: 12px;
            color: #000000;
            left: 1px;

        }

        .desc {
            margin: 0px 20px 30px;
            text-align: center;
            font-size: 12px;
            color: #828282;
        }

        .loginBtn {
            width: 100%;
            line-height: 36px;
            text-align: center;
            font-size: 15px;
            color: #fff;
            background: rgb(57, 99, 134);
            outline: none;
            border: none;
            margin-top: 10px;
        }

        .no {
            display: flex;
            justify-content: space-between;
            cursor: pointer;
            text-align: center;
            font-size: 12px;
            color: #828282;
        }

    </style>
</head>
<body>
<div class="Box">
    <form action="LoginServlet">
        <h3>欢迎登录</h3>
        <p class="desc">WELCOME LOGIN</p>
        <input type="text"  name="username" placeholder="请输入账号" required>
        <input type="password" name="password" placeholder="请输入密码" required>

        <input  class="vcode" type="text" name="verification" placeholder="图形验证码"><img id="checkCode" src="VerificationCodeServlet">
        ${errInfo}
        <input type="submit" class="loginBtn" value="登录"></button>
        <p class="no">
            <span>忘记密码</span>
            <span>没有账号？<a id="regist" href="regist.jsp">立即注册</a></span>
        </p>
    </form>
</div>
</body>
</html>
