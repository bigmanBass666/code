<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>添加品牌</title>
</head>
<body>
<h3>add brand</h3>
<form action="addServlet" method="post">
    brand name: <input name="brandName"><br>
    companyName: <input name="companyName"><br>
    ordered: <input name="ordered"><br>
    description: <textarea rows="5" cols="20" name="description"></textarea><br>
    status: 
        <input type="radio" name="status" value="0">disable
        <input type="radio" name="status" value="1">enable<br>

    <input type="submit" value="submit">
</form>
</body>
</html>