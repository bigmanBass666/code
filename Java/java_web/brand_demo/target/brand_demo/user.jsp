<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>all users</title>
    </head>
    <body>
        <h1 align="center">${user.username}, welcome!</h1>
        <input type="button" value="新增" id="btn" /><br />
        <hr />
        <table border="1" cellspacing="0">
            <tr>
                <th>id</th>
                <th>username</th>
                <th>password</th>
                <%-- <th>操作</th> --%>
            </tr>

            <c:forEach items="${users}" var="user">
                <tr align="center">
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
<%-- 
                    <td><a href="selectByIdServlet?id=${user.id}">修改</a> <a href="deleteServlet?id=${user.id}"href="#">删除</a></td> --%>
                </tr>
            </c:forEach>
        </table>

        <hr />

        <c:forEach begin="1" end="10" step="1" var="i">
            <a href="#">${i}</a>
        </c:forEach>
    </body>
</html>
