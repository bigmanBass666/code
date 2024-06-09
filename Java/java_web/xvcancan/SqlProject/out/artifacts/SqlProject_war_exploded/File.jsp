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

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      display: flex;
      height: 100vh;
    }

    .formBox {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;

      margin: auto;
    }

    form {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    .inputBox {
      display: flex;
      justify-content: space-between;
      
      margin-top: 15px;
      width: 300px;

      text-wrap: nowrap;
    }

    input {
      width: 70%;
    }

    input[type="submit"] {
      width: 100px;
    }
  </style>
</head>

<body>
  <div class="formBox">
    <h2>文件上传</h2>
    <form action="UploadServlet3" method="post" enctype="multipart/form-data">
      <div class="inputBox">商品名称：<input type="text" name="productName"></div>

      <div class="inputBox">商品类别：<input type="text" name="productCategory"></div>

      <div class="inputBox">商品价格：<input type="text" name="productPrice"></div>

      <div class="inputBox">选择照片:<input type="file" name="file" id="file" accept="image/*"></div>

      <div class="inputBox"><span>请上传 3M 以下的文件</span> <input type="submit" value="上传"></div>
    </form>
  </div>
</body>

</html>