<%--
  Created by IntelliJ IDEA.
  User: AMD
  Date: 2024/5/30
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>文件上传</h2>
<form action="UploadServlet3" method="post" enctype="multipart/form-data">
    商品名称：<input type="text" name="productName">
    <br>
    商品类别：<input type="text" name="productCategory">
    <br>
    商品价格：<input type="text" name="productPrice">
    <br>
    选择照片:<input type="file" name="file" id="file" accept="image/*"><br><br>
    <span>请上传 3M 以下的文件</span>
    <input type="submit" value="上传">
</form>
</body>
</html>
