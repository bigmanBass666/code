<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>update品牌</title>
    </head>
    <body>
        <h3>update brand</h3>
        <form action="updateServlet" method="post">
            <%-- type="hidden" 隐藏域 --%>
            <input type="hidden" value="${brand.id}" name="id">
        
            brand name: <input name="brandName" value="${brand.brandName}" /><br />
            companyName: <input name="companyName" value="${brand.companyName}" /><br />
            ordered: <input name="ordered" value="${brand.ordered}" /><br />
            description: <textarea rows="5" cols="20" name="description">${brand.description}</textarea><br />
            status:

            <c:if test="${brand.status == 0}">
                <input type="radio" name="status" value="0" checked/>disable
                <input type="radio" name="status" value="1" />enable<br />
            </c:if>

            <c:if test="${brand.status == 1}">
                <input type="radio" name="status" value="0"/>disable
                <input type="radio" name="status" value="1" checked />enable<br />
            </c:if>

            <input type="submit" value="submit" />
        </form>
    </body>
</html>
