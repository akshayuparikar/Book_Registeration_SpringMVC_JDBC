<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Books</title>
</head>
<body>
    <h2>Registered Books</h2>
    <table border="2">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Author</th>
            <th>Price</th>
        </tr>
        <c:forEach var="b" items="${book}">
            <tr>
                <td>${b.id}</td>
                <td>${b.name}</td>
                <td>${b.author}</td> 
                <td>${b.price}</td> 
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="register">Add New Book</a>
</body>
</html>
