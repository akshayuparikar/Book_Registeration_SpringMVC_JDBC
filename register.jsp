<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Registration</title>
</head>
<body>
    <h2>Book Registration</h2>

    <form action="registerbook" method="post">
        Name: <input type="text" name="name"/><br><br>
        Author: <input type="text" name="author"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        <input type="submit" value="Register"/>
    </form>

    <br>
    <a href="viewbook">View All Books</a>
</body>
</html>
