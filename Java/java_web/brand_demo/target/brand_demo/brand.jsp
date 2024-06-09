<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>all brands</title>
    </head>
    <body>
        <h1 align="center">${user.username}, welcome!</h1>
        <input type="button" value="新增" id="btn" /><br />
        <hr />
        <table border="1" cellspacing="0">
            <tr>
                <th>序号</th>
                <th>品牌名称</th>
                <th>企业名称</th>
                <th>排序</th>
                <th>品牌介绍</th>
                <th>状态</th>
                <th>操作</th>
            </tr>

            <c:forEach items="${brands}" var="brand" varStatus="status">
                <tr align="center">
                    <%--<td>${brand.id}</td>--%>
                    <td>${status.count}</td>
                    <td>${brand.brandName}</td>
                    <td>${brand.companyName}</td>
                    <td>${brand.ordered}</td>
                    <td>${brand.description}</td>
                    <c:if test="${brand.status == 1}">
                        <td>启用</td>
                    </c:if>
                    <c:if test="${brand.status != 1}">
                        <td>禁用</td>
                    </c:if>

                    <td><a href="selectByIdServlet?id=${brand.id}">修改</a> <a href="deleteServlet?id=${brand.id}"href="#">删除</a></td>
                </tr>
            </c:forEach>
        </table>

        <hr />

        <c:forEach begin="1" end="10" step="1" var="i">
            <a href="#">${i}</a>
        </c:forEach>

        <script>
            const btn = document.querySelector("#btn")
            btn.addEventListener("click", function () {
                location.href = "addBrand.jsp"
            })
        </script>
    </body>
</html>
