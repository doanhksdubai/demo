<%@ page contentType="text/html; charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  
    <a href="/admin/user/create" class="btn btn-success">Create</a>
    <br>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="col-1">ID</th>
                                                <th class="col-2">Email</th>
                                                <th class="col-2">Họ tên</th>
                                                <th class="col-2">Password</th>
                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="us" items="${users}">
                                                <tr>
                                                    <td>${us.id}</td>
                                                    <td>${us.email}</td>
                                                    <td>${us.name}</td>
                                                   <td>${us.password}</td>
                                                    <td>
                                                        <a class="btn btn-success" href="/admin/user/${us.id}">Xem</a>
                                                        <a class="btn btn-warning"
                                                            href="/admin/user/update/${us.id}">Sửa</a>
                                                        <a class="btn btn-danger"
                                                            href="/admin/user/delete/${us.id}">Xóa</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>


                                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>