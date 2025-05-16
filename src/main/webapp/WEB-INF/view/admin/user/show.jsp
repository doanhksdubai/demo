<%@ page contentType="text/html; charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    hello user 

    <div>
        <p>Id: ${user.id}</p>
        <p>Email: ${user.email}</p>
        <p>Name: ${user.name}</p>
        <p>Password: ${user.password}</p>
    </div>
</body>
</html>