<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 2024-04-12
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
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
        <form action="RegistServlet">
            <h2>用户注册</h2>
            <p class="desc">WELCOME REGIST</p>
            <input type="text"  name="username" placeholder="请输入账号" required>
            <input type="password" name="password" placeholder="请输入密码" required>
            ${info}
            <input type="submit" class="loginBtn" value="注册"></button>
        </form>
    </div>
</body>
</html>
