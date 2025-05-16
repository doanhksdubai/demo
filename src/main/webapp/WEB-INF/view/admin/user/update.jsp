<%@ page contentType="text/html; charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            text-align: center;
            margin-top: 100px;
        }
    </style>
</head>
<body>
    
    <form:form action="/admin/user/update" modelAttribute="user" method="post">
        <form:hidden path="id"/>
        <label>Tên:</label>
        <form:input path="name" /><br><br>
        <label>Email:</label>
        <form:input path="email" /><br><br>
        <label>Mật khẩu:</label>
        <form:password path="password" /><br><br>

        <button class="btn btn-primary">Cập nhật thông tin người dùng</button>
    </form:form>


</body>
</html>