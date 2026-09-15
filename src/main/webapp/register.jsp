<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 10/09/2026
  Time: 13:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Đăng ký - Tải nhạc</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
  </head>
  <body>
    <h1>Đăng ký tải nhạc</h1>

    <p>Để đăng ký tải nhạc, vui lòng nhập tên và email của bạn dưới đây, sau đó nhấn nút Đăng ký.</p>

    <form action="download" method="post">
      <input type="hidden" name="action" value="registerUser">
      
      <label class="pad_top">Email:</label>
      <input type="email" name="email" value="${user.email}"><br>
      
      <label class="pad_top">First Name:</label>
      <input type="text" name="firstName" value="${user.firstName}"><br>
      
      <label class="pad_top">Last Name:</label>
      <input type="text" name="lastName" value="${user.lastName}"><br>
      
      <label>&nbsp;</label>
      <input type="submit" value="Register" class="margin_left">
    </form>
  </body>
</html>
