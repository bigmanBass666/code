<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>index</title>

	<link rel="shortcut icon"
		href="https://p1.music.126.net/1lqMPskW7B75S1Km452I_Q==/18762066417668140.jpg?param=130y130"
		type="image/x-icon">

	<style>
		#checkCodeImg,
		button[type="submit"] {
			cursor: pointer;
		}
	</style>
</head>

<body>
	<form action="LoginServlet" method="post">
		用户名: <input type="text" name="username">
		密码: <input type="text" name="password">
		验证码: <input type="text" name="checkCode">

		<img src="VerificationCodeServlet" alt="sth get wrong..." id="checkCodeImg">
		<a href="#" id="changeImg">看不清？</a>

		<button type="submit">提交</button>
	</form>

	<script>
		document.querySelector("#changeImg").addEventListener("click", function () {
			document.querySelector("#checkCodeImg").src = "VerificationCodeServlet?" + new Date().getMilliseconds()
		})

		document.querySelector("#checkCodeImg").addEventListener("click", function () {
			document.querySelector("#checkCodeImg").src = "VerificationCodeServlet?" + new Date().getMilliseconds()
		})
	</script>

</body>


</html>